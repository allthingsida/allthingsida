//
// PDB file: ntdll_64_10.0.19041.3324.pdb
// Image architecture: Amd64
//
// Information extracted with resym v0.3.0 and curated by Elias Bachaalany
//
// In IDA, go to "Options -> Compiler" and select 'clang', then specify these switches: -x c++ -target x86_64-pc-win32

#include <stdint.h>

struct _ACTIVATION_CONTEXT_DATA;
struct _ASSEMBLY_STORAGE_MAP;
struct _ACTIVATION_CONTEXT;
struct _RTL_CRITICAL_SECTION_DEBUG;
struct _LDRP_LOAD_CONTEXT;

enum _EXCEPTION_DISPOSITION : int32_t {
  ExceptionContinueExecution = 0x0000,
  ExceptionContinueSearch = 0x0001,
  ExceptionNestedException = 0x0002,
  ExceptionCollidedUnwind = 0x0003,
};

struct _UNICODE_STRING { /* Size=0x10 */
  /* 0x0000 */ uint16_t Length;
  /* 0x0002 */ uint16_t MaximumLength;
  /* 0x0008 */ wchar_t* Buffer;
};

struct _unnamed_0x12dc { /* Size=0x10 */
  /* 0x0000 */ uint64_t Depth : 16; /* BitPos=0 */
  /* 0x0000 */ uint64_t Sequence : 48; /* BitPos=16 */
  /* 0x0000 */ uint64_t : 0; /* BitPos=64 */
  /* 0x0008 */ uint64_t Reserved : 4; /* BitPos=0 */
  /* 0x0008 */ uint64_t NextEntry : 60; /* BitPos=4 */
};

struct _M128A { /* Size=0x10 */
  /* 0x0000 */ uint64_t Low;
  /* 0x0008 */ int64_t High;
};

struct _unnamed_0x111a { /* Size=0x8 */
  /* 0x0000 */ uint32_t LowPart;
  /* 0x0004 */ int32_t HighPart;
};

struct _unnamed_0x108c { /* Size=0x8 */
  /* 0x0000 */ uint32_t LowPart;
  /* 0x0004 */ uint32_t HighPart;
};

struct _LIST_ENTRY { /* Size=0x10 */
  /* 0x0000 */ _LIST_ENTRY* Flink;
  /* 0x0008 */ _LIST_ENTRY* Blink;
};

union _SLIST_HEADER { /* Size=0x10 */
  struct {
    /* 0x0000 */ uint64_t Alignment;
    /* 0x0008 */ uint64_t Region;
  };
  /* 0x0000 */ _unnamed_0x12dc HeaderX64;
};

struct _SINGLE_LIST_ENTRY { /* Size=0x8 */
    /* 0x0000 */ _SINGLE_LIST_ENTRY* Next;
};

union _LARGE_INTEGER { /* Size=0x8 */
  struct {
    /* 0x0000 */ uint32_t LowPart;
    /* 0x0004 */ int32_t HighPart;
  };
  /* 0x0000 */ _unnamed_0x111a u;
  /* 0x0000 */ int64_t QuadPart;
};

union _ULARGE_INTEGER { /* Size=0x8 */
  struct {
    /* 0x0000 */ uint32_t LowPart;
    /* 0x0004 */ uint32_t HighPart;
  };
  /* 0x0000 */ _unnamed_0x108c u;
  /* 0x0000 */ uint64_t QuadPart;
};

struct _EXCEPTION_RECORD { /* Size=0x98 */
  /* 0x0000 */ int32_t ExceptionCode;
  /* 0x0004 */ uint32_t ExceptionFlags;
  /* 0x0008 */ _EXCEPTION_RECORD* ExceptionRecord;
  /* 0x0010 */ void* ExceptionAddress;
  /* 0x0018 */ uint32_t NumberParameters;
  /* 0x0020 */ uint64_t ExceptionInformation[15];
};

struct _RTL_ACTIVATION_CONTEXT_STACK_FRAME { /* Size=0x18 */
  /* 0x0000 */ _RTL_ACTIVATION_CONTEXT_STACK_FRAME* Previous;
  /* 0x0008 */ _ACTIVATION_CONTEXT* ActivationContext;
  /* 0x0010 */ uint32_t Flags;
};

struct _CURDIR { /* Size=0x18 */
  /* 0x0000 */ _UNICODE_STRING DosPath;
  /* 0x0010 */ void* Handle;
};

struct _XSAVE_FORMAT { /* Size=0x200 */
  /* 0x0000 */ uint16_t ControlWord;
  /* 0x0002 */ uint16_t StatusWord;
  /* 0x0004 */ unsigned char TagWord;
  /* 0x0005 */ unsigned char Reserved1;
  /* 0x0006 */ uint16_t ErrorOpcode;
  /* 0x0008 */ uint32_t ErrorOffset;
  /* 0x000c */ uint16_t ErrorSelector;
  /* 0x000e */ uint16_t Reserved2;
  /* 0x0010 */ uint32_t DataOffset;
  /* 0x0014 */ uint16_t DataSelector;
  /* 0x0016 */ uint16_t Reserved3;
  /* 0x0018 */ uint32_t MxCsr;
  /* 0x001c */ uint32_t MxCsr_Mask;
  /* 0x0020 */ _M128A FloatRegisters[8];
  /* 0x00a0 */ _M128A XmmRegisters[16];
  /* 0x01a0 */ unsigned char Reserved4[96];
};

struct _RTL_CRITICAL_SECTION { /* Size=0x28 */
  /* 0x0000 */ _RTL_CRITICAL_SECTION_DEBUG* DebugInfo;
  /* 0x0008 */ int32_t LockCount;
  /* 0x000c */ int32_t RecursionCount;
  /* 0x0010 */ void* OwningThread;
  /* 0x0018 */ void* LockSemaphore;
  /* 0x0020 */ uint64_t SpinCount;
};

struct _RTL_CRITICAL_SECTION_DEBUG { /* Size=0x30 */
  /* 0x0000 */ uint16_t Type;
  /* 0x0002 */ uint16_t CreatorBackTraceIndex;
  /* 0x0008 */ _RTL_CRITICAL_SECTION* CriticalSection;
  /* 0x0010 */ _LIST_ENTRY ProcessLocksList;
  /* 0x0020 */ uint32_t EntryCount;
  /* 0x0024 */ uint32_t ContentionCount;
  /* 0x0028 */ uint32_t Flags;
  /* 0x002c */ uint16_t CreatorBackTraceIndexHigh;
  /* 0x002e */ uint16_t SpareUSHORT;
};

struct _CONTEXT { /* Size=0x4d0 */
  /* 0x0000 */ uint64_t P1Home;
  /* 0x0008 */ uint64_t P2Home;
  /* 0x0010 */ uint64_t P3Home;
  /* 0x0018 */ uint64_t P4Home;
  /* 0x0020 */ uint64_t P5Home;
  /* 0x0028 */ uint64_t P6Home;
  /* 0x0030 */ uint32_t ContextFlags;
  /* 0x0034 */ uint32_t MxCsr;
  /* 0x0038 */ uint16_t SegCs;
  /* 0x003a */ uint16_t SegDs;
  /* 0x003c */ uint16_t SegEs;
  /* 0x003e */ uint16_t SegFs;
  /* 0x0040 */ uint16_t SegGs;
  /* 0x0042 */ uint16_t SegSs;
  /* 0x0044 */ uint32_t EFlags;
  /* 0x0048 */ uint64_t Dr0;
  /* 0x0050 */ uint64_t Dr1;
  /* 0x0058 */ uint64_t Dr2;
  /* 0x0060 */ uint64_t Dr3;
  /* 0x0068 */ uint64_t Dr6;
  /* 0x0070 */ uint64_t Dr7;
  /* 0x0078 */ uint64_t Rax;
  /* 0x0080 */ uint64_t Rcx;
  /* 0x0088 */ uint64_t Rdx;
  /* 0x0090 */ uint64_t Rbx;
  /* 0x0098 */ uint64_t Rsp;
  /* 0x00a0 */ uint64_t Rbp;
  /* 0x00a8 */ uint64_t Rsi;
  /* 0x00b0 */ uint64_t Rdi;
  /* 0x00b8 */ uint64_t R8;
  /* 0x00c0 */ uint64_t R9;
  /* 0x00c8 */ uint64_t R10;
  /* 0x00d0 */ uint64_t R11;
  /* 0x00d8 */ uint64_t R12;
  /* 0x00e0 */ uint64_t R13;
  /* 0x00e8 */ uint64_t R14;
  /* 0x00f0 */ uint64_t R15;
  /* 0x00f8 */ uint64_t Rip;
  union {
    /* 0x0100 */ _XSAVE_FORMAT FltSave;
    struct {
      /* 0x0100 */ _M128A Header[2];
      /* 0x0120 */ _M128A Legacy[8];
      /* 0x01a0 */ _M128A Xmm0;
      /* 0x01b0 */ _M128A Xmm1;
      /* 0x01c0 */ _M128A Xmm2;
      /* 0x01d0 */ _M128A Xmm3;
      /* 0x01e0 */ _M128A Xmm4;
      /* 0x01f0 */ _M128A Xmm5;
      /* 0x0200 */ _M128A Xmm6;
      /* 0x0210 */ _M128A Xmm7;
      /* 0x0220 */ _M128A Xmm8;
      /* 0x0230 */ _M128A Xmm9;
      /* 0x0240 */ _M128A Xmm10;
      /* 0x0250 */ _M128A Xmm11;
      /* 0x0260 */ _M128A Xmm12;
      /* 0x0270 */ _M128A Xmm13;
      /* 0x0280 */ _M128A Xmm14;
      /* 0x0290 */ _M128A Xmm15;
    };
  };
  /* 0x0300 */ _M128A VectorRegister[26];
  /* 0x04a0 */ uint64_t VectorControl;
  /* 0x04a8 */ uint64_t DebugControl;
  /* 0x04b0 */ uint64_t LastBranchToRip;
  /* 0x04b8 */ uint64_t LastBranchFromRip;
  /* 0x04c0 */ uint64_t LastExceptionToRip;
  /* 0x04c8 */ uint64_t LastExceptionFromRip;
};

struct _LEAP_SECOND_DATA { /* Size=0x10 */
  /* 0x0000 */ unsigned char Enabled;
  /* 0x0004 */ uint32_t Count;
  /* 0x0008 */ _LARGE_INTEGER Data[1];
};

struct _STRING { /* Size=0x10 */
  /* 0x0000 */ uint16_t Length;
  /* 0x0002 */ uint16_t MaximumLength;
  /* 0x0008 */ char* Buffer;
};

struct _RTL_DRIVE_LETTER_CURDIR { /* Size=0x18 */
  /* 0x0000 */ uint16_t Flags;
  /* 0x0002 */ uint16_t Length;
  /* 0x0004 */ uint32_t TimeStamp;
  /* 0x0008 */ _STRING DosPath;
};

struct _TEB_ACTIVE_FRAME_CONTEXT { /* Size=0x10 */
  /* 0x0000 */ uint32_t Flags;
  /* 0x0008 */ const char* FrameName;
};

struct _GDI_TEB_BATCH { /* Size=0x4e8 */
  /* 0x0000 */ uint32_t Offset : 31; /* BitPos=0 */
  /* 0x0000 */ uint32_t HasRenderingCommand : 1; /* BitPos=31 */
  /* 0x0008 */ uint64_t HDC;
  /* 0x0010 */ uint32_t Buffer[310];
};

struct _EXCEPTION_REGISTRATION_RECORD { /* Size=0x10 */
  /* 0x0000 */ _EXCEPTION_REGISTRATION_RECORD* Next;
  /* 0x0008 */ _EXCEPTION_DISPOSITION (* Handler)(_EXCEPTION_RECORD*, void*, _CONTEXT*, void*);
};

struct _NT_TIB { /* Size=0x38 */
  /* 0x0000 */ _EXCEPTION_REGISTRATION_RECORD* ExceptionList;
  /* 0x0008 */ void* StackBase;
  /* 0x0010 */ void* StackLimit;
  /* 0x0018 */ void* SubSystemTib;
  union {
    /* 0x0020 */ void* FiberData;
    /* 0x0020 */ uint32_t Version;
  };
  /* 0x0028 */ void* ArbitraryUserPointer;
  /* 0x0030 */ _NT_TIB* Self;
};

struct _RTL_USER_PROCESS_PARAMETERS { /* Size=0x440 */
  /* 0x0000 */ uint32_t MaximumLength;
  /* 0x0004 */ uint32_t Length;
  /* 0x0008 */ uint32_t Flags;
  /* 0x000c */ uint32_t DebugFlags;
  /* 0x0010 */ void* ConsoleHandle;
  /* 0x0018 */ uint32_t ConsoleFlags;
  /* 0x0020 */ void* StandardInput;
  /* 0x0028 */ void* StandardOutput;
  /* 0x0030 */ void* StandardError;
  /* 0x0038 */ _CURDIR CurrentDirectory;
  /* 0x0050 */ _UNICODE_STRING DllPath;
  /* 0x0060 */ _UNICODE_STRING ImagePathName;
  /* 0x0070 */ _UNICODE_STRING CommandLine;
  /* 0x0080 */ void* Environment;
  /* 0x0088 */ uint32_t StartingX;
  /* 0x008c */ uint32_t StartingY;
  /* 0x0090 */ uint32_t CountX;
  /* 0x0094 */ uint32_t CountY;
  /* 0x0098 */ uint32_t CountCharsX;
  /* 0x009c */ uint32_t CountCharsY;
  /* 0x00a0 */ uint32_t FillAttribute;
  /* 0x00a4 */ uint32_t WindowFlags;
  /* 0x00a8 */ uint32_t ShowWindowFlags;
  /* 0x00b0 */ _UNICODE_STRING WindowTitle;
  /* 0x00c0 */ _UNICODE_STRING DesktopInfo;
  /* 0x00d0 */ _UNICODE_STRING ShellInfo;
  /* 0x00e0 */ _UNICODE_STRING RuntimeData;
  /* 0x00f0 */ _RTL_DRIVE_LETTER_CURDIR CurrentDirectores[32];
  /* 0x03f0 */ uint64_t EnvironmentSize;
  /* 0x03f8 */ uint64_t EnvironmentVersion;
  /* 0x0400 */ void* PackageDependencyData;
  /* 0x0408 */ uint32_t ProcessGroupId;
  /* 0x040c */ uint32_t LoaderThreads;
  /* 0x0410 */ _UNICODE_STRING RedirectionDllName;
  /* 0x0420 */ _UNICODE_STRING HeapPartitionName;
  /* 0x0430 */ uint64_t* DefaultThreadpoolCpuSetMasks;
  /* 0x0438 */ uint32_t DefaultThreadpoolCpuSetMaskCount;
  /* 0x043c */ uint32_t DefaultThreadpoolThreadMaximum;
};

struct _ACTIVATION_CONTEXT_STACK { /* Size=0x28 */
  /* 0x0000 */ _RTL_ACTIVATION_CONTEXT_STACK_FRAME* ActiveFrame;
  /* 0x0008 */ _LIST_ENTRY FrameListCache;
  /* 0x0018 */ uint32_t Flags;
  /* 0x001c */ uint32_t NextCookieSequenceNumber;
  /* 0x0020 */ uint32_t StackId;
};

struct _PROCESSOR_NUMBER { /* Size=0x4 */
  /* 0x0000 */ uint16_t Group;
  /* 0x0002 */ unsigned char Number;
  /* 0x0003 */ unsigned char Reserved;
};

struct _TEB_ACTIVE_FRAME { /* Size=0x18 */
  /* 0x0000 */ uint32_t Flags;
  /* 0x0008 */ _TEB_ACTIVE_FRAME* Previous;
  /* 0x0010 */ const _TEB_ACTIVE_FRAME_CONTEXT* Context;
};

struct _CLIENT_ID { /* Size=0x10 */
  /* 0x0000 */ void* UniqueProcess;
  /* 0x0008 */ void* UniqueThread;
};

struct _PEB_LDR_DATA { /* Size=0x58 */
  /* 0x0000 */ uint32_t Length;
  /* 0x0004 */ unsigned char Initialized;
  /* 0x0008 */ void* SsHandle;
  /* 0x0010 */ _LIST_ENTRY InLoadOrderModuleList;
  /* 0x0020 */ _LIST_ENTRY InMemoryOrderModuleList;
  /* 0x0030 */ _LIST_ENTRY InInitializationOrderModuleList;
  /* 0x0040 */ void* EntryInProgress;
  /* 0x0048 */ unsigned char ShutdownInProgress;
  /* 0x0050 */ void* ShutdownThreadId;
};


struct _PEB { /* Size=0x7c8 */
  /* 0x0000 */ unsigned char InheritedAddressSpace;
  /* 0x0001 */ unsigned char ReadImageFileExecOptions;
  /* 0x0002 */ unsigned char BeingDebugged;
  union {
    /* 0x0003 */ unsigned char BitField;
    struct {
      /* 0x0003 */ unsigned char ImageUsesLargePages : 1; /* BitPos=0 */
      /* 0x0003 */ unsigned char IsProtectedProcess : 1; /* BitPos=1 */
      /* 0x0003 */ unsigned char IsImageDynamicallyRelocated : 1; /* BitPos=2 */
      /* 0x0003 */ unsigned char SkipPatchingUser32Forwarders : 1; /* BitPos=3 */
      /* 0x0003 */ unsigned char IsPackagedProcess : 1; /* BitPos=4 */
      /* 0x0003 */ unsigned char IsAppContainer : 1; /* BitPos=5 */
      /* 0x0003 */ unsigned char IsProtectedProcessLight : 1; /* BitPos=6 */
      /* 0x0003 */ unsigned char IsLongPathAwareProcess : 1; /* BitPos=7 */
    };
  };
  /* 0x0004 */ unsigned char Padding0[4];
  /* 0x0008 */ void* Mutant;
  /* 0x0010 */ void* ImageBaseAddress;
  /* 0x0018 */ _PEB_LDR_DATA* Ldr;
  /* 0x0020 */ _RTL_USER_PROCESS_PARAMETERS* ProcessParameters;
  /* 0x0028 */ void* SubSystemData;
  /* 0x0030 */ void* ProcessHeap;
  /* 0x0038 */ _RTL_CRITICAL_SECTION* FastPebLock;
  /* 0x0040 */ _SLIST_HEADER* AtlThunkSListPtr;
  /* 0x0048 */ void* IFEOKey;
  union {
    /* 0x0050 */ uint32_t CrossProcessFlags;
    struct {
      /* 0x0050 */ uint32_t ProcessInJob : 1; /* BitPos=0 */
      /* 0x0050 */ uint32_t ProcessInitializing : 1; /* BitPos=1 */
      /* 0x0050 */ uint32_t ProcessUsingVEH : 1; /* BitPos=2 */
      /* 0x0050 */ uint32_t ProcessUsingVCH : 1; /* BitPos=3 */
      /* 0x0050 */ uint32_t ProcessUsingFTH : 1; /* BitPos=4 */
      /* 0x0050 */ uint32_t ProcessPreviouslyThrottled : 1; /* BitPos=5 */
      /* 0x0050 */ uint32_t ProcessCurrentlyThrottled : 1; /* BitPos=6 */
      /* 0x0050 */ uint32_t ProcessImagesHotPatched : 1; /* BitPos=7 */
      /* 0x0050 */ uint32_t ReservedBits0 : 24; /* BitPos=8 */
    };
  };
  /* 0x0054 */ unsigned char Padding1[4];
  union {
    /* 0x0058 */ void* KernelCallbackTable;
    /* 0x0058 */ void* UserSharedInfoPtr;
  };
  /* 0x0060 */ uint32_t SystemReserved;
  /* 0x0064 */ uint32_t AtlThunkSListPtr32;
  /* 0x0068 */ void* ApiSetMap;
  /* 0x0070 */ uint32_t TlsExpansionCounter;
  /* 0x0074 */ unsigned char Padding2[4];
  /* 0x0078 */ void* TlsBitmap;
  /* 0x0080 */ uint32_t TlsBitmapBits[2];
  /* 0x0088 */ void* ReadOnlySharedMemoryBase;
  /* 0x0090 */ void* SharedData;
  /* 0x0098 */ void** ReadOnlyStaticServerData;
  /* 0x00a0 */ void* AnsiCodePageData;
  /* 0x00a8 */ void* OemCodePageData;
  /* 0x00b0 */ void* UnicodeCaseTableData;
  /* 0x00b8 */ uint32_t NumberOfProcessors;
  /* 0x00bc */ uint32_t NtGlobalFlag;
  /* 0x00c0 */ _LARGE_INTEGER CriticalSectionTimeout;
  /* 0x00c8 */ uint64_t HeapSegmentReserve;
  /* 0x00d0 */ uint64_t HeapSegmentCommit;
  /* 0x00d8 */ uint64_t HeapDeCommitTotalFreeThreshold;
  /* 0x00e0 */ uint64_t HeapDeCommitFreeBlockThreshold;
  /* 0x00e8 */ uint32_t NumberOfHeaps;
  /* 0x00ec */ uint32_t MaximumNumberOfHeaps;
  /* 0x00f0 */ void** ProcessHeaps;
  /* 0x00f8 */ void* GdiSharedHandleTable;
  /* 0x0100 */ void* ProcessStarterHelper;
  /* 0x0108 */ uint32_t GdiDCAttributeList;
  /* 0x010c */ unsigned char Padding3[4];
  /* 0x0110 */ _RTL_CRITICAL_SECTION* LoaderLock;
  /* 0x0118 */ uint32_t OSMajorVersion;
  /* 0x011c */ uint32_t OSMinorVersion;
  /* 0x0120 */ uint16_t OSBuildNumber;
  /* 0x0122 */ uint16_t OSCSDVersion;
  /* 0x0124 */ uint32_t OSPlatformId;
  /* 0x0128 */ uint32_t ImageSubsystem;
  /* 0x012c */ uint32_t ImageSubsystemMajorVersion;
  /* 0x0130 */ uint32_t ImageSubsystemMinorVersion;
  /* 0x0134 */ unsigned char Padding4[4];
  /* 0x0138 */ uint64_t ActiveProcessAffinityMask;
  /* 0x0140 */ uint32_t GdiHandleBuffer[60];
  /* 0x0230 */ void (* PostProcessInitRoutine)();
  /* 0x0238 */ void* TlsExpansionBitmap;
  /* 0x0240 */ uint32_t TlsExpansionBitmapBits[32];
  /* 0x02c0 */ uint32_t SessionId;
  /* 0x02c4 */ unsigned char Padding5[4];
  /* 0x02c8 */ _ULARGE_INTEGER AppCompatFlags;
  /* 0x02d0 */ _ULARGE_INTEGER AppCompatFlagsUser;
  /* 0x02d8 */ void* pShimData;
  /* 0x02e0 */ void* AppCompatInfo;
  /* 0x02e8 */ _UNICODE_STRING CSDVersion;
  /* 0x02f8 */ const _ACTIVATION_CONTEXT_DATA* ActivationContextData;
  /* 0x0300 */ _ASSEMBLY_STORAGE_MAP* ProcessAssemblyStorageMap;
  /* 0x0308 */ const _ACTIVATION_CONTEXT_DATA* SystemDefaultActivationContextData;
  /* 0x0310 */ _ASSEMBLY_STORAGE_MAP* SystemAssemblyStorageMap;
  /* 0x0318 */ uint64_t MinimumStackCommit;
  /* 0x0320 */ void* SparePointers[4];
  /* 0x0340 */ uint32_t SpareUlongs[5];
  /* 0x0358 */ void* WerRegistrationData;
  /* 0x0360 */ void* WerShipAssertPtr;
  /* 0x0368 */ void* pUnused;
  /* 0x0370 */ void* pImageHeaderHash;
  union {
    /* 0x0378 */ uint32_t TracingFlags;
    struct {
      /* 0x0378 */ uint32_t HeapTracingEnabled : 1; /* BitPos=0 */
      /* 0x0378 */ uint32_t CritSecTracingEnabled : 1; /* BitPos=1 */
      /* 0x0378 */ uint32_t LibLoaderTracingEnabled : 1; /* BitPos=2 */
      /* 0x0378 */ uint32_t SpareTracingBits : 29; /* BitPos=3 */
    };
  };
  /* 0x037c */ unsigned char Padding6[4];
  /* 0x0380 */ uint64_t CsrServerReadOnlySharedMemoryBase;
  /* 0x0388 */ uint64_t TppWorkerpListLock;
  /* 0x0390 */ _LIST_ENTRY TppWorkerpList;
  /* 0x03a0 */ void* WaitOnAddressHashTable[128];
  /* 0x07a0 */ void* TelemetryCoverageHeader;
  /* 0x07a8 */ uint32_t CloudFileFlags;
  /* 0x07ac */ uint32_t CloudFileDiagFlags;
  /* 0x07b0 */ char PlaceholderCompatibilityMode;
  /* 0x07b1 */ char PlaceholderCompatibilityModeReserved[7];
  /* 0x07b8 */ _LEAP_SECOND_DATA* LeapSecondData;
  union {
    /* 0x07c0 */ uint32_t LeapSecondFlags;
    struct {
      /* 0x07c0 */ uint32_t SixtySecondEnabled : 1; /* BitPos=0 */
      /* 0x07c0 */ uint32_t Reserved : 31; /* BitPos=1 */
    };
  };
  /* 0x07c4 */ uint32_t NtGlobalFlag2;
};

struct _GUID { /* Size=0x10 */
  /* 0x0000 */ uint32_t Data1;
  /* 0x0004 */ uint16_t Data2;
  /* 0x0006 */ uint16_t Data3;
  /* 0x0008 */ unsigned char Data4[8];
};

struct _TEB { /* Size=0x1838 */
  /* 0x0000 */ _NT_TIB NtTib;
  /* 0x0038 */ void* EnvironmentPointer;
  /* 0x0040 */ _CLIENT_ID ClientId;
  /* 0x0050 */ void* ActiveRpcHandle;
  /* 0x0058 */ void* ThreadLocalStoragePointer;
  /* 0x0060 */ _PEB* ProcessEnvironmentBlock;
  /* 0x0068 */ uint32_t LastErrorValue;
  /* 0x006c */ uint32_t CountOfOwnedCriticalSections;
  /* 0x0070 */ void* CsrClientThread;
  /* 0x0078 */ void* Win32ThreadInfo;
  /* 0x0080 */ uint32_t User32Reserved[26];
  /* 0x00e8 */ uint32_t UserReserved[5];
  /* 0x0100 */ void* WOW32Reserved;
  /* 0x0108 */ uint32_t CurrentLocale;
  /* 0x010c */ uint32_t FpSoftwareStatusRegister;
  /* 0x0110 */ void* ReservedForDebuggerInstrumentation[16];
  /* 0x0190 */ void* SystemReserved1[30];
  /* 0x0280 */ char PlaceholderCompatibilityMode;
  /* 0x0281 */ unsigned char PlaceholderHydrationAlwaysExplicit;
  /* 0x0282 */ char PlaceholderReserved[10];
  /* 0x028c */ uint32_t ProxiedProcessId;
  /* 0x0290 */ _ACTIVATION_CONTEXT_STACK _ActivationStack;
  /* 0x02b8 */ unsigned char WorkingOnBehalfTicket[8];
  /* 0x02c0 */ int32_t ExceptionCode;
  /* 0x02c4 */ unsigned char Padding0[4];
  /* 0x02c8 */ _ACTIVATION_CONTEXT_STACK* ActivationContextStackPointer;
  /* 0x02d0 */ uint64_t InstrumentationCallbackSp;
  /* 0x02d8 */ uint64_t InstrumentationCallbackPreviousPc;
  /* 0x02e0 */ uint64_t InstrumentationCallbackPreviousSp;
  /* 0x02e8 */ uint32_t TxFsContext;
  /* 0x02ec */ unsigned char InstrumentationCallbackDisabled;
  /* 0x02ed */ unsigned char UnalignedLoadStoreExceptions;
  /* 0x02ee */ unsigned char Padding1[2];
  /* 0x02f0 */ _GDI_TEB_BATCH GdiTebBatch;
  /* 0x07d8 */ _CLIENT_ID RealClientId;
  /* 0x07e8 */ void* GdiCachedProcessHandle;
  /* 0x07f0 */ uint32_t GdiClientPID;
  /* 0x07f4 */ uint32_t GdiClientTID;
  /* 0x07f8 */ void* GdiThreadLocalInfo;
  /* 0x0800 */ uint64_t Win32ClientInfo[62];
  /* 0x09f0 */ void* glDispatchTable[233];
  /* 0x1138 */ uint64_t glReserved1[29];
  /* 0x1220 */ void* glReserved2;
  /* 0x1228 */ void* glSectionInfo;
  /* 0x1230 */ void* glSection;
  /* 0x1238 */ void* glTable;
  /* 0x1240 */ void* glCurrentRC;
  /* 0x1248 */ void* glContext;
  /* 0x1250 */ uint32_t LastStatusValue;
  /* 0x1254 */ unsigned char Padding2[4];
  /* 0x1258 */ _UNICODE_STRING StaticUnicodeString;
  /* 0x1268 */ wchar_t StaticUnicodeBuffer[261];
  /* 0x1472 */ unsigned char Padding3[6];
  /* 0x1478 */ void* DeallocationStack;
  /* 0x1480 */ void* TlsSlots[64];
  /* 0x1680 */ _LIST_ENTRY TlsLinks;
  /* 0x1690 */ void* Vdm;
  /* 0x1698 */ void* ReservedForNtRpc;
  /* 0x16a0 */ void* DbgSsReserved[2];
  /* 0x16b0 */ uint32_t HardErrorMode;
  /* 0x16b4 */ unsigned char Padding4[4];
  /* 0x16b8 */ void* Instrumentation[11];
  /* 0x1710 */ _GUID ActivityId;
  /* 0x1720 */ void* SubProcessTag;
  /* 0x1728 */ void* PerflibData;
  /* 0x1730 */ void* EtwTraceData;
  /* 0x1738 */ void* WinSockData;
  /* 0x1740 */ uint32_t GdiBatchCount;
  union {
    /* 0x1744 */ _PROCESSOR_NUMBER CurrentIdealProcessor;
    /* 0x1744 */ uint32_t IdealProcessorValue;
    struct {
      /* 0x1744 */ unsigned char ReservedPad0;
      /* 0x1745 */ unsigned char ReservedPad1;
      /* 0x1746 */ unsigned char ReservedPad2;
      /* 0x1747 */ unsigned char IdealProcessor;
    };
  };
  /* 0x1748 */ uint32_t GuaranteedStackBytes;
  /* 0x174c */ unsigned char Padding5[4];
  /* 0x1750 */ void* ReservedForPerf;
  /* 0x1758 */ void* ReservedForOle;
  /* 0x1760 */ uint32_t WaitingOnLoaderLock;
  /* 0x1764 */ unsigned char Padding6[4];
  /* 0x1768 */ void* SavedPriorityState;
  /* 0x1770 */ uint64_t ReservedForCodeCoverage;
  /* 0x1778 */ void* ThreadPoolData;
  /* 0x1780 */ void** TlsExpansionSlots;
  /* 0x1788 */ void* DeallocationBStore;
  /* 0x1790 */ void* BStoreLimit;
  /* 0x1798 */ uint32_t MuiGeneration;
  /* 0x179c */ uint32_t IsImpersonating;
  /* 0x17a0 */ void* NlsCache;
  /* 0x17a8 */ void* pShimData;
  /* 0x17b0 */ uint32_t HeapData;
  /* 0x17b4 */ unsigned char Padding7[4];
  /* 0x17b8 */ void* CurrentTransactionHandle;
  /* 0x17c0 */ _TEB_ACTIVE_FRAME* ActiveFrame;
  /* 0x17c8 */ void* FlsData;
  /* 0x17d0 */ void* PreferredLanguages;
  /* 0x17d8 */ void* UserPrefLanguages;
  /* 0x17e0 */ void* MergedPrefLanguages;
  /* 0x17e8 */ uint32_t MuiImpersonation;
  union {
    /* 0x17ec */ volatile uint16_t CrossTebFlags;
    /* 0x17ec */ uint16_t SpareCrossTebBits : 16; /* BitPos=0 */
  };
  union {
    /* 0x17ee */ uint16_t SameTebFlags;
    struct {
      /* 0x17ee */ uint16_t SafeThunkCall : 1; /* BitPos=0 */
      /* 0x17ee */ uint16_t InDebugPrint : 1; /* BitPos=1 */
      /* 0x17ee */ uint16_t HasFiberData : 1; /* BitPos=2 */
      /* 0x17ee */ uint16_t SkipThreadAttach : 1; /* BitPos=3 */
      /* 0x17ee */ uint16_t WerInShipAssertCode : 1; /* BitPos=4 */
      /* 0x17ee */ uint16_t RanProcessInit : 1; /* BitPos=5 */
      /* 0x17ee */ uint16_t ClonedThread : 1; /* BitPos=6 */
      /* 0x17ee */ uint16_t SuppressDebugMsg : 1; /* BitPos=7 */
      /* 0x17ee */ uint16_t DisableUserStackWalk : 1; /* BitPos=8 */
      /* 0x17ee */ uint16_t RtlExceptionAttached : 1; /* BitPos=9 */
      /* 0x17ee */ uint16_t InitialThread : 1; /* BitPos=10 */
      /* 0x17ee */ uint16_t SessionAware : 1; /* BitPos=11 */
      /* 0x17ee */ uint16_t LoadOwner : 1; /* BitPos=12 */
      /* 0x17ee */ uint16_t LoaderWorker : 1; /* BitPos=13 */
      /* 0x17ee */ uint16_t SkipLoaderInit : 1; /* BitPos=14 */
      /* 0x17ee */ uint16_t SpareSameTebBits : 1; /* BitPos=15 */
    };
  };
  /* 0x17f0 */ void* TxnScopeEnterCallback;
  /* 0x17f8 */ void* TxnScopeExitCallback;
  /* 0x1800 */ void* TxnScopeContext;
  /* 0x1808 */ uint32_t LockCount;
  /* 0x180c */ int32_t WowTebOffset;
  /* 0x1810 */ void* ResourceRetValue;
  /* 0x1818 */ void* ReservedForWdf;
  /* 0x1820 */ uint64_t ReservedForCrt;
  /* 0x1828 */ _GUID EffectiveContainerId;
};

enum _LDR_DDAG_STATE : int32_t {
    LdrModulesMerged = 0xfb,
    LdrModulesInitError = 0xfc,
    LdrModulesSnapError = 0xfd,
    LdrModulesUnloaded = 0xfe,
    LdrModulesUnloading = 0xff,
    LdrModulesPlaceHolder = 0x0000,
    LdrModulesMapping = 0x0001,
    LdrModulesMapped = 0x0002,
    LdrModulesWaitingForDependencies = 0x0003,
    LdrModulesSnapping = 0x0004,
    LdrModulesSnapped = 0x0005,
    LdrModulesCondensed = 0x0006,
    LdrModulesReadyToInit = 0x0007,
    LdrModulesInitializing = 0x0008,
    LdrModulesReadyToRun = 0x0009,
};

enum _LDR_DLL_LOAD_REASON : int32_t {
    LoadReasonStaticDependency = 0x0000,
    LoadReasonStaticForwarderDependency = 0x0001,
    LoadReasonDynamicForwarderDependency = 0x0002,
    LoadReasonDelayloadDependency = 0x0003,
    LoadReasonDynamicLoad = 0x0004,
    LoadReasonAsImageLoad = 0x0005,
    LoadReasonAsDataLoad = 0x0006,
    LoadReasonEnclavePrimary = 0x0007,
    LoadReasonEnclaveDependency = 0x0008,
    LoadReasonUnknown = 0xff,
};

struct _LDR_SERVICE_TAG_RECORD { /* Size=0x10 */
    /* 0x0000 */ _LDR_SERVICE_TAG_RECORD* Next;
    /* 0x0008 */ uint32_t ServiceTag;
};

struct _LDRP_CSLIST { /* Size=0x8 */
    /* 0x0000 */ _SINGLE_LIST_ENTRY* Tail;
};

struct _LDR_DDAG_NODE { /* Size=0x50 */
    /* 0x0000 */ _LIST_ENTRY Modules;
    /* 0x0010 */ _LDR_SERVICE_TAG_RECORD* ServiceTagList;
    /* 0x0018 */ uint32_t LoadCount;
    /* 0x001c */ uint32_t LoadWhileUnloadingCount;
    /* 0x0020 */ uint32_t LowestLink;
    /* 0x0028 */ _LDRP_CSLIST Dependencies;
    /* 0x0030 */ _LDRP_CSLIST IncomingDependencies;
    /* 0x0038 */ _LDR_DDAG_STATE State;
    /* 0x0040 */ _SINGLE_LIST_ENTRY CondenseLink;
    /* 0x0048 */ uint32_t PreorderNumber;
};

struct _RTL_BALANCED_NODE { /* Size=0x18 */
    union {
        /* 0x0000 */ _RTL_BALANCED_NODE* Children[2];
        struct {
            /* 0x0000 */ _RTL_BALANCED_NODE* Left;
            /* 0x0008 */ _RTL_BALANCED_NODE* Right;
        };
    };
    union {
        /* 0x0010 */ unsigned char Red : 1; /* BitPos=0 */
        /* 0x0010 */ unsigned char Balance : 2; /* BitPos=0 */
        /* 0x0010 */ uint64_t ParentValue;
    };
};

struct _LDR_DATA_TABLE_ENTRY { /* Size=0x120 */
    /* 0x0000 */ _LIST_ENTRY InLoadOrderLinks;
    /* 0x0010 */ _LIST_ENTRY InMemoryOrderLinks;
    /* 0x0020 */ _LIST_ENTRY InInitializationOrderLinks;
    /* 0x0030 */ void* DllBase;
    /* 0x0038 */ void* EntryPoint;
    /* 0x0040 */ uint32_t SizeOfImage;
    /* 0x0048 */ _UNICODE_STRING FullDllName;
    /* 0x0058 */ _UNICODE_STRING BaseDllName;
    union {
        /* 0x0068 */ unsigned char FlagGroup[4];
        /* 0x0068 */ uint32_t Flags;
        struct {
            /* 0x0068 */ uint32_t PackagedBinary : 1; /* BitPos=0 */
            /* 0x0068 */ uint32_t MarkedForRemoval : 1; /* BitPos=1 */
            /* 0x0068 */ uint32_t ImageDll : 1; /* BitPos=2 */
            /* 0x0068 */ uint32_t LoadNotificationsSent : 1; /* BitPos=3 */
            /* 0x0068 */ uint32_t TelemetryEntryProcessed : 1; /* BitPos=4 */
            /* 0x0068 */ uint32_t ProcessStaticImport : 1; /* BitPos=5 */
            /* 0x0068 */ uint32_t InLegacyLists : 1; /* BitPos=6 */
            /* 0x0068 */ uint32_t InIndexes : 1; /* BitPos=7 */
            /* 0x0068 */ uint32_t ShimDll : 1; /* BitPos=8 */
            /* 0x0068 */ uint32_t InExceptionTable : 1; /* BitPos=9 */
            /* 0x0068 */ uint32_t ReservedFlags1 : 2; /* BitPos=10 */
            /* 0x0068 */ uint32_t LoadInProgress : 1; /* BitPos=12 */
            /* 0x0068 */ uint32_t LoadConfigProcessed : 1; /* BitPos=13 */
            /* 0x0068 */ uint32_t EntryProcessed : 1; /* BitPos=14 */
            /* 0x0068 */ uint32_t ProtectDelayLoad : 1; /* BitPos=15 */
            /* 0x0068 */ uint32_t ReservedFlags3 : 2; /* BitPos=16 */
            /* 0x0068 */ uint32_t DontCallForThreads : 1; /* BitPos=18 */
            /* 0x0068 */ uint32_t ProcessAttachCalled : 1; /* BitPos=19 */
            /* 0x0068 */ uint32_t ProcessAttachFailed : 1; /* BitPos=20 */
            /* 0x0068 */ uint32_t CorDeferredValidate : 1; /* BitPos=21 */
            /* 0x0068 */ uint32_t CorImage : 1; /* BitPos=22 */
            /* 0x0068 */ uint32_t DontRelocate : 1; /* BitPos=23 */
            /* 0x0068 */ uint32_t CorILOnly : 1; /* BitPos=24 */
            /* 0x0068 */ uint32_t ChpeImage : 1; /* BitPos=25 */
            /* 0x0068 */ uint32_t ReservedFlags5 : 2; /* BitPos=26 */
            /* 0x0068 */ uint32_t Redirected : 1; /* BitPos=28 */
            /* 0x0068 */ uint32_t ReservedFlags6 : 2; /* BitPos=29 */
            /* 0x0068 */ uint32_t CompatDatabaseProcessed : 1; /* BitPos=31 */
        };
    };
    /* 0x006c */ uint16_t ObsoleteLoadCount;
    /* 0x006e */ uint16_t TlsIndex;
    /* 0x0070 */ _LIST_ENTRY HashLinks;
    /* 0x0080 */ uint32_t TimeDateStamp;
    /* 0x0088 */ _ACTIVATION_CONTEXT* EntryPointActivationContext;
    /* 0x0090 */ void* Lock;
    /* 0x0098 */ _LDR_DDAG_NODE* DdagNode;
    /* 0x00a0 */ _LIST_ENTRY NodeModuleLink;
    /* 0x00b0 */ _LDRP_LOAD_CONTEXT* LoadContext;
    /* 0x00b8 */ void* ParentDllBase;
    /* 0x00c0 */ void* SwitchBackContext;
    /* 0x00c8 */ _RTL_BALANCED_NODE BaseAddressIndexNode;
    /* 0x00e0 */ _RTL_BALANCED_NODE MappingInfoIndexNode;
    /* 0x00f8 */ uint64_t OriginalBase;
    /* 0x0100 */ _LARGE_INTEGER LoadTime;
    /* 0x0108 */ uint32_t BaseNameHashValue;
    /* 0x010c */ _LDR_DLL_LOAD_REASON LoadReason;
    /* 0x0110 */ uint32_t ImplicitPathOptions;
    /* 0x0114 */ uint32_t ReferenceCount;
    /* 0x0118 */ uint32_t DependentLoadFlags;
    /* 0x011c */ unsigned char SigningLevel;
};
