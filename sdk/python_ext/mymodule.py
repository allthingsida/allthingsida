import idaapi

class MyObject:
    def __init__(self, a, b):
        self.a = a
        self.b = b
        self.o = idaapi.object_t(a=a, b=b)

    def dothis(self, str_arg: str, int_arg1: int, int_arg2: int):
        print(f"String argument: {str_arg}")
        print(f"Integer arguments: {int_arg1}, {int_arg2}")
        return f"Result from dothis(a={self.a})"

    def get_dict(self):
        return {"key1": "value1", "key2": "value2", "key3": "value3"}
