
// Helper function to patch in decryption key characters
void patch_decryption_key(const char* decrypt_key, unsigned char* bytecode_array)
{
    for (int i = 0; i < KEY_LENGTH; i++)
        bytecode_array[mapping[i]] = decrypt_key[i];
}

void buf_to_c_array(
    std::ostringstream& oss,
    const unsigned char* bytecode,
    int size,
    int elementsPerLine)
{
    oss << "unsigned char bytecode[" << size << "] = {\n  ";
    for (int i = 0; i < size; ++i)
    {
        if (i % elementsPerLine == 0 && i != 0)
        {
            oss << "\n  ";
        }
        oss << "0x" << std::hex << std::setw(2) << std::setfill('0') << static_cast<int>(bytecode[i]) << ", ";
    }
    oss << "\n};\n";
}

void buf_to_c_init(
    std::ostringstream& oss,
    const unsigned char* bytecode,
    int size)
{
    oss << "unsigned char bytecode[" << std::dec << size << "];\n";
    for (int i = 0; i < size; ++i)
    {
        //oss << "0x" << std::hex << std::setw(2) << std::setfill('0') << static_cast<int>(bytecode[i]) << "\n";
        oss << "bytecode[" << std::dec << i << "] = 0x" << std::hex << std::setw(2) << std::setfill('0') << static_cast<int>(bytecode[i]) << ";\n";
    }
}

void buf_to_c_klee_assume(
    std::ostringstream& oss,
    const unsigned char* bytecode,
    int size)
{
    std::set<int> indices;
    for (auto& i : mapping)
        indices.insert(i);

    oss << "unsigned char bytecode[" << std::dec << size << "];\n";
    oss << "klee_make_symbolic(bytecode, " << size << ", \"bytecode\");\n";

    for (int i = 0; i < size; ++i)
    {
        if (indices.find(i) == indices.end())
            oss << "klee_assume(bytecode[" << std::dec << i << "] == 0x" << std::hex << std::setw(2) << std::setfill('0') << static_cast<int>(bytecode[i]) << ");\n";
    }
}
