// Working with the Decompiler's Ctree in C++ and IDAPython: Learning with Examples
//
// by Elias Bachaalany(c) AllThingsIDA

#include "idasdk.h"

#define STRICMP_NAME "_stricmp"

bool display_pseudocode_lines(cfuncptr_t cfunc)
{
    auto &lines = cfunc->get_pseudocode();
    for (auto &line : lines)
    {
        qstring s;
        tag_remove(&s, line.line.c_str());
        msg("%s\n", s.c_str());
    }
    return true;
}

bool find_int_literals(cfuncptr_t cfunc)
{
    class intliterals_visitor_t : public ctree_visitor_t
    {
    public:
        intliterals_visitor_t() : ctree_visitor_t(CV_FAST) {}

        int idaapi visit_expr(cexpr_t* e) override
        {
            if (e->op == cot_num)
            {
                msg("%a: %" FMT_64 "x\n", e->ea, e->numval());
            }
            return 0; // continue traversal
        }
    };

    intliterals_visitor_t v;
    v.apply_to(&cfunc->body, nullptr);

    return true;
}

bool find_all_calls(cfuncptr_t cfunc)
{
    struct ida_local calls_finder_t : public ctree_visitor_t
    {
        calls_finder_t() : ctree_visitor_t(CV_FAST)
        {
        }

        int idaapi visit_expr(cexpr_t* e) override
        {
            if (    e->op == cot_call 
                 && e->x->op == cot_obj)
            {
                ea_t ea = e->x->obj_ea;
                msg("%a: cot_call found --> %s (%a)\n", e->ea, get_name(ea).c_str(), ea);
            }
            return 0;
        }
    };

    calls_finder_t finder;
    finder.apply_to(&cfunc->body, nullptr);

    return true;
}

static bool find_stricmp_calls_simple(cfuncptr_t cfunc)
{
    struct strcmp_finder_t : public ctree_visitor_t
    {
        ea_t strcmp_ea;
        strcmp_finder_t() : ctree_visitor_t(CV_FAST)
        {
            strcmp_ea = get_name_ea(BADADDR, STRICMP_NAME);
        }

        virtual int idaapi visit_expr(cexpr_t* expr)
        {
            if (expr->op != cot_call)
                return 0;

            cexpr_t* called = expr->x;
            if (called->op != cot_obj || called->obj_ea != strcmp_ea)
                return 0;

            msg("%a: strcmp(x, y)\n", expr->ea);
            return 0;
        }
    };
    strcmp_finder_t v;
	v.apply_to(&cfunc->body, nullptr);

    return true;
}

static bool find_stricmp_calls_dump_args(cfuncptr_t cfunc)
{
    struct strcmp_finder_t : public ctree_visitor_t
    {
        ea_t strcmp_ea;
        strcmp_finder_t() : ctree_visitor_t(CV_FAST)
        {
            strcmp_ea = get_name_ea(BADADDR, STRICMP_NAME);
        }

        virtual int idaapi visit_expr(cexpr_t* expr)
        {
            if (expr->op != cot_call)
                return 0;

            cexpr_t* called = expr->x;
            if (    called->op != cot_obj 
                 || called->obj_ea != strcmp_ea 
                 || expr->a->size() != 2)
			{
                return 0;
			}

            if (carg_t& arg2 = expr->a->at(1); arg2.op == cot_obj)
            {
                ea_t string_ea = arg2.obj_ea;
                qstring str;
                get_strlit_contents(
                    &str,
                    string_ea,
                    -1,
                    STRTYPE_C);
                msg("%a: strcmp(x, \"%s\")\n",
                    expr->ea,
                    str.c_str());
            }
            return 0;
        }
    };
    strcmp_finder_t v;
    v.apply_to(&cfunc->body, nullptr);

    return true;
}

//----------------------------------------------------------------------------------
static void find_expr(
    cfuncptr_t func,
    std::function<int(cexpr_t*)> cb,
    int flags = CV_FAST,
    citem_t* parent = nullptr)
{
    struct visitor_wrapper : public ctree_visitor_t
    {
        std::function<int(cexpr_t*)> cb;

        visitor_wrapper(int flags, std::function<int(cexpr_t*)> cb)
            : ctree_visitor_t(flags), cb(cb) {}

        virtual int idaapi visit_expr(cexpr_t* expr)
        {
            return cb(expr);
        }
    };

    visitor_wrapper v(flags, cb);
    v.apply_to(&func->body, parent);
}

bool simplified_int_literals(cfuncptr_t cfunc)
{
    find_expr(
        cfunc, 
        [](cexpr_t* e) -> int
        {
            if (e->op == cot_num)
                msg("%a: %" FMT_64 "x\n", e->ea, e->numval());

            return 0; // continue traversal
        });
    return true;
}

static bool simplified_find_stricmp_calls_dump_args(cfuncptr_t cfunc)
{
    ea_t strcmp_ea = get_name_ea(BADADDR, STRICMP_NAME);
    find_expr(
        cfunc,
        [strcmp_ea](cexpr_t* expr) -> int
        {
            if (cexpr_t* called = expr->x; 
                   expr->op != cot_call 
                || expr->a->size() != 2
                || called->op != cot_obj 
                || called->obj_ea != strcmp_ea)
            {
                return 0;
            }

            if (carg_t& arg2 = expr->a->at(1); 
                arg2.op == cot_obj)
            {
                ea_t string_ea = arg2.obj_ea;
                qstring str;
                if (auto sz = get_strlit_contents(
                                    &str,
                                    string_ea,
                                    -1,
                                    STRTYPE_C); 
                    sz > 0)
                {
                    msg("%a: strcmp(x, \"%s\")\n",
                        expr->ea,
                        str.c_str());
                }
        }
        return 0;
    });
    return true;
}

bool main(size_t)
{
    func_t *func = get_func(get_screen_ea());
    if (func == nullptr)
    {
        msg("Please position the cursor within a function!\n");
        return false;
    }

    hexrays_failure_t hf;
    cfuncptr_t cfunc = decompile(func, &hf, DECOMP_NO_WAIT);
    if (cfunc == nullptr)
    {
        msg("Failed to decompile function!\n");
        return false;
    }

    msg_clear();

    display_pseudocode_lines(cfunc);
    //find_int_literals(cfunc);
    //find_all_calls(cfunc);
    //find_stricmp_calls_simple(cfunc);
    //find_stricmp_calls_dump_args(cfunc);
    //simplified_int_literals(cfunc);
    //simplified_find_stricmp_calls_dump_args(cfunc);

    return true;
}