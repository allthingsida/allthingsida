
// Compute the delta first: delta = new_base − old_base

void applyRelocations(char* baseAddress, DWORD delta, IMAGE_BASE_RELOCATION* relocBlock) 
{
    DWORD blockSize = relocBlock->SizeOfBlock;
    DWORD numEntries = (blockSize - sizeof(IMAGE_BASE_RELOCATION)) / sizeof(WORD);
    WORD* entries = reinterpret_cast<WORD*>(relocBlock + 1);

    for (DWORD i = 0; i < numEntries; ++i) 
    {
        WORD entry = entries[i];
        DWORD type = entry >> 12;
        DWORD offset = entry & 0xFFF;
        char* addressToPatch = baseAddress + relocBlock->VirtualAddress + offset;

        switch (type) 
        {
            case IMAGE_REL_BASED_ABSOLUTE:
                // No relocation required
                break;
            case IMAGE_REL_BASED_HIGH:
                *reinterpret_cast<WORD*>(addressToPatch) += (delta >> 16) & 0xFFFF;
                break;
            case IMAGE_REL_BASED_LOW:
                *reinterpret_cast<WORD*>(addressToPatch) += delta & 0xFFFF;
                break;
            case IMAGE_REL_BASED_HIGHLOW:
                *reinterpret_cast<DWORD*>(addressToPatch) += delta;
                break;
            case IMAGE_REL_BASED_HIGHADJ:
            {
                WORD* highAdjAddress = reinterpret_cast<WORD*>(addressToPatch);
                WORD nextEntry = entries[++i]; // Get the next relocation entry
                LONG adjustedDelta = ((delta >> 16) & 0xFFFF) + nextEntry;
                *highAdjAddress += adjustedDelta;
                break;
            }
            case IMAGE_REL_BASED_DIR64:
                *reinterpret_cast<ULONGLONG*>(addressToPatch) += delta;
                break;
            default:
                // Unknown!!!
                break;
        }
    }
}
