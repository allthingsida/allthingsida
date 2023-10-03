//
// PDB file: ntdll_32.dll_10.0.19041.3324.pdb
// Image architecture: X86
//
// Information extracted with resym v0.3.0 and curated by Elias Bachaalany
//

#include <cstdint>


struct _ACTIVATION_CONTEXT_DATA;
struct _ASSEMBLY_STORAGE_MAP;
struct _ACTIVATION_CONTEXT;
struct _RTL_CRITICAL_SECTION_DEBUG;
struct _LDRP_LOAD_CONTEXT;

struct _UNICODE_STRING { /* Size=0x8 */
  /* 0x0000 */ uint16_t Length;
  /* 0x0002 */ uint16_t MaximumLength;
  /* 0x0004 */ wchar_t* Buffer;
};

struct _LIST_ENTRY { /* Size=0x8 */
  /* 0x0000 */ _LIST_ENTRY* Flink;
  /* 0x0004 */ _LIST_ENTRY* Blink;
};

struct _SINGLE_LIST_ENTRY { /* Size=0x4 */
  /* 0x0000 */ _SINGLE_LIST_ENTRY* Next;
};

struct _unnamed_0x108d { /* Size=0x8 */
  /* 0x0000 */ uint32_t LowPart;
  /* 0x0004 */ int32_t HighPart;
};

struct _unnamed_0x1089 { /* Size=0x8 */
  /* 0x0000 */ uint32_t LowPart;
  /* 0x0004 */ uint32_t HighPart;
};

union _SLIST_HEADER { /* Size=0x8 */
  /* 0x0000 */ uint64_t Alignment;
  struct {
    /* 0x0000 */ _SINGLE_LIST_ENTRY Next;
    /* 0x0004 */ uint16_t Depth;
    /* 0x0006 */ uint16_t CpuId;
  };
};

union _LARGE_INTEGER { /* Size=0x8 */
  struct {
    /* 0x0000 */ uint32_t LowPart;
    /* 0x0004 */ int32_t HighPart;
  };
  /* 0x0000 */ _unnamed_0x108d u;
  /* 0x0000 */ int64_t QuadPart;
};

union _ULARGE_INTEGER { /* Size=0x8 */
  struct {
    /* 0x0000 */ uint32_t LowPart;
    /* 0x0004 */ uint32_t HighPart;
  };
  /* 0x0000 */ _unnamed_0x1089 u;
  /* 0x0000 */ uint64_t QuadPart;
};

struct _RTL_CRITICAL_SECTION { /* Size=0x18 */
  /* 0x0000 */ _RTL_CRITICAL_SECTION_DEBUG* DebugInfo;
  /* 0x0004 */ int32_t LockCount;
  /* 0x0008 */ int32_t RecursionCount;
  /* 0x000c */ void* OwningThread;
  /* 0x0010 */ void* LockSemaphore;
  /* 0x0014 */ uint32_t SpinCount;
};

struct _RTL_CRITICAL_SECTION_DEBUG { /* Size=0x20 */
  /* 0x0000 */ uint16_t Type;
  /* 0x0002 */ uint16_t CreatorBackTraceIndex;
  /* 0x0004 */ _RTL_CRITICAL_SECTION* CriticalSection;
  /* 0x0008 */ _LIST_ENTRY ProcessLocksList;
  /* 0x0010 */ uint32_t EntryCount;
  /* 0x0014 */ uint32_t ContentionCount;
  /* 0x0018 */ uint32_t Flags;
  /* 0x001c */ uint16_t CreatorBackTraceIndexHigh;
  /* 0x001e */ uint16_t SpareUSHORT;
};

enum _EXCEPTION_DISPOSITION : int32_t {
  ExceptionContinueExecution = 0x0000,
  ExceptionContinueSearch = 0x0001,
  ExceptionNestedException = 0x0002,
  ExceptionCollidedUnwind = 0x0003,
};

struct _EXCEPTION_RECORD { /* Size=0x50 */
  /* 0x0000 */ int32_t ExceptionCode;
  /* 0x0004 */ uint32_t ExceptionFlags;
  /* 0x0008 */ _EXCEPTION_RECORD* ExceptionRecord;
  /* 0x000c */ void* ExceptionAddress;
  /* 0x0010 */ uint32_t NumberParameters;
  /* 0x0014 */ uint32_t ExceptionInformation[15];
};

struct _RTL_ACTIVATION_CONTEXT_STACK_FRAME { /* Size=0xc */
  /* 0x0000 */ _RTL_ACTIVATION_CONTEXT_STACK_FRAME* Previous;
  /* 0x0004 */ _ACTIVATION_CONTEXT* ActivationContext;
  /* 0x0008 */ uint32_t Flags;
};

struct _CURDIR { /* Size=0xc */
  /* 0x0000 */ _UNICODE_STRING DosPath;
  /* 0x0008 */ void* Handle;
};

struct _LEAP_SECOND_DATA { /* Size=0x10 */
  /* 0x0000 */ unsigned char Enabled;
  /* 0x0004 */ uint32_t Count;
  /* 0x0008 */ _LARGE_INTEGER Data[1];
};

struct _FLOATING_SAVE_AREA { /* Size=0x70 */
  /* 0x0000 */ uint32_t ControlWord;
  /* 0x0004 */ uint32_t StatusWord;
  /* 0x0008 */ uint32_t TagWord;
  /* 0x000c */ uint32_t ErrorOffset;
  /* 0x0010 */ uint32_t ErrorSelector;
  /* 0x0014 */ uint32_t DataOffset;
  /* 0x0018 */ uint32_t DataSelector;
  /* 0x001c */ unsigned char RegisterArea[80];
  /* 0x006c */ uint32_t Spare0;
};

struct _STRING { /* Size=0x8 */
  /* 0x0000 */ uint16_t Length;
  /* 0x0002 */ uint16_t MaximumLength;
  /* 0x0004 */ char* Buffer;
};

struct _RTL_DRIVE_LETTER_CURDIR { /* Size=0x10 */
  /* 0x0000 */ uint16_t Flags;
  /* 0x0002 */ uint16_t Length;
  /* 0x0004 */ uint32_t TimeStamp;
  /* 0x0008 */ _STRING DosPath;
};

struct _TEB_ACTIVE_FRAME_CONTEXT { /* Size=0x8 */
  /* 0x0000 */ uint32_t Flags;
  /* 0x0004 */ const char* FrameName;
};

struct _GDI_TEB_BATCH { /* Size=0x4e0 */
  /* 0x0000 */ uint32_t Offset : 31; /* BitPos=0 */
  /* 0x0000 */ uint32_t HasRenderingCommand : 1; /* BitPos=31 */
  /* 0x0004 */ uint32_t HDC;
  /* 0x0008 */ uint32_t Buffer[310];
};

struct _CONTEXT { /* Size=0x2cc */
  /* 0x0000 */ uint32_t ContextFlags;
  /* 0x0004 */ uint32_t Dr0;
  /* 0x0008 */ uint32_t Dr1;
  /* 0x000c */ uint32_t Dr2;
  /* 0x0010 */ uint32_t Dr3;
  /* 0x0014 */ uint32_t Dr6;
  /* 0x0018 */ uint32_t Dr7;
  /* 0x001c */ _FLOATING_SAVE_AREA FloatSave;
  /* 0x008c */ uint32_t SegGs;
  /* 0x0090 */ uint32_t SegFs;
  /* 0x0094 */ uint32_t SegEs;
  /* 0x0098 */ uint32_t SegDs;
  /* 0x009c */ uint32_t Edi;
  /* 0x00a0 */ uint32_t Esi;
  /* 0x00a4 */ uint32_t Ebx;
  /* 0x00a8 */ uint32_t Edx;
  /* 0x00ac */ uint32_t Ecx;
  /* 0x00b0 */ uint32_t Eax;
  /* 0x00b4 */ uint32_t Ebp;
  /* 0x00b8 */ uint32_t Eip;
  /* 0x00bc */ uint32_t SegCs;
  /* 0x00c0 */ uint32_t EFlags;
  /* 0x00c4 */ uint32_t Esp;
  /* 0x00c8 */ uint32_t SegSs;
  /* 0x00cc */ unsigned char ExtendedRegisters[512];
};

struct _EXCEPTION_REGISTRATION_RECORD { /* Size=0x8 */
  /* 0x0000 */ _EXCEPTION_REGISTRATION_RECORD* Next;
  /* 0x0004 */ _EXCEPTION_DISPOSITION (* Handler)(_EXCEPTION_RECORD*, void*, _CONTEXT*, void*);
};

struct _NT_TIB { /* Size=0x1c */
  /* 0x0000 */ _EXCEPTION_REGISTRATION_RECORD* ExceptionList;
  /* 0x0004 */ void* StackBase;
  /* 0x0008 */ void* StackLimit;
  /* 0x000c */ void* SubSystemTib;
  union {
    /* 0x0010 */ void* FiberData;
    /* 0x0010 */ uint32_t Version;
  };
  /* 0x0014 */ void* ArbitraryUserPointer;
  /* 0x0018 */ _NT_TIB* Self;
};

struct _RTL_USER_PROCESS_PARAMETERS { /* Size=0x2c0 */
  /* 0x0000 */ uint32_t MaximumLength;
  /* 0x0004 */ uint32_t Length;
  /* 0x0008 */ uint32_t Flags;
  /* 0x000c */ uint32_t DebugFlags;
  /* 0x0010 */ void* ConsoleHandle;
  /* 0x0014 */ uint32_t ConsoleFlags;
  /* 0x0018 */ void* StandardInput;
  /* 0x001c */ void* StandardOutput;
  /* 0x0020 */ void* StandardError;
  /* 0x0024 */ _CURDIR CurrentDirectory;
  /* 0x0030 */ _UNICODE_STRING DllPath;
  /* 0x0038 */ _UNICODE_STRING ImagePathName;
  /* 0x0040 */ _UNICODE_STRING CommandLine;
  /* 0x0048 */ void* Environment;
  /* 0x004c */ uint32_t StartingX;
  /* 0x0050 */ uint32_t StartingY;
  /* 0x0054 */ uint32_t CountX;
  /* 0x0058 */ uint32_t CountY;
  /* 0x005c */ uint32_t CountCharsX;
  /* 0x0060 */ uint32_t CountCharsY;
  /* 0x0064 */ uint32_t FillAttribute;
  /* 0x0068 */ uint32_t WindowFlags;
  /* 0x006c */ uint32_t ShowWindowFlags;
  /* 0x0070 */ _UNICODE_STRING WindowTitle;
  /* 0x0078 */ _UNICODE_STRING DesktopInfo;
  /* 0x0080 */ _UNICODE_STRING ShellInfo;
  /* 0x0088 */ _UNICODE_STRING RuntimeData;
  /* 0x0090 */ _RTL_DRIVE_LETTER_CURDIR CurrentDirectores[32];
  /* 0x0290 */ uint32_t EnvironmentSize;
  /* 0x0294 */ uint32_t EnvironmentVersion;
  /* 0x0298 */ void* PackageDependencyData;
  /* 0x029c */ uint32_t ProcessGroupId;
  /* 0x02a0 */ uint32_t LoaderThreads;
  /* 0x02a4 */ _UNICODE_STRING RedirectionDllName;
  /* 0x02ac */ _UNICODE_STRING HeapPartitionName;
  /* 0x02b4 */ uint64_t* DefaultThreadpoolCpuSetMasks;
  /* 0x02b8 */ uint32_t DefaultThreadpoolCpuSetMaskCount;
  /* 0x02bc */ uint32_t DefaultThreadpoolThreadMaximum;
};

struct _ACTIVATION_CONTEXT_STACK { /* Size=0x18 */
  /* 0x0000 */ _RTL_ACTIVATION_CONTEXT_STACK_FRAME* ActiveFrame;
  /* 0x0004 */ _LIST_ENTRY FrameListCache;
  /* 0x000c */ uint32_t Flags;
  /* 0x0010 */ uint32_t NextCookieSequenceNumber;
  /* 0x0014 */ uint32_t StackId;
};

struct _PROCESSOR_NUMBER { /* Size=0x4 */
  /* 0x0000 */ uint16_t Group;
  /* 0x0002 */ unsigned char Number;
  /* 0x0003 */ unsigned char Reserved;
};

struct _TEB_ACTIVE_FRAME { /* Size=0xc */
  /* 0x0000 */ uint32_t Flags;
  /* 0x0004 */ _TEB_ACTIVE_FRAME* Previous;
  /* 0x0008 */ const _TEB_ACTIVE_FRAME_CONTEXT* Context;
};

struct _CLIENT_ID { /* Size=0x8 */
  /* 0x0000 */ void* UniqueProcess;
  /* 0x0004 */ void* UniqueThread;
};

struct _PEB_LDR_DATA { /* Size=0x30 */
  /* 0x0000 */ uint32_t Length;
  /* 0x0004 */ unsigned char Initialized;
  /* 0x0008 */ void* SsHandle;
  /* 0x000c */ _LIST_ENTRY InLoadOrderModuleList;
  /* 0x0014 */ _LIST_ENTRY InMemoryOrderModuleList;
  /* 0x001c */ _LIST_ENTRY InInitializationOrderModuleList;
  /* 0x0024 */ void* EntryInProgress;
  /* 0x0028 */ unsigned char ShutdownInProgress;
  /* 0x002c */ void* ShutdownThreadId;
};

struct _PEB { /* Size=0x480 */
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
  /* 0x0004 */ void* Mutant;
  /* 0x0008 */ void* ImageBaseAddress;
  /* 0x000c */ _PEB_LDR_DATA* Ldr;
  /* 0x0010 */ _RTL_USER_PROCESS_PARAMETERS* ProcessParameters;
  /* 0x0014 */ void* SubSystemData;
  /* 0x0018 */ void* ProcessHeap;
  /* 0x001c */ _RTL_CRITICAL_SECTION* FastPebLock;
  /* 0x0020 */ _SLIST_HEADER* AtlThunkSListPtr;
  /* 0x0024 */ void* IFEOKey;
  union {
    /* 0x0028 */ uint32_t CrossProcessFlags;
    struct {
      /* 0x0028 */ uint32_t ProcessInJob : 1; /* BitPos=0 */
      /* 0x0028 */ uint32_t ProcessInitializing : 1; /* BitPos=1 */
      /* 0x0028 */ uint32_t ProcessUsingVEH : 1; /* BitPos=2 */
      /* 0x0028 */ uint32_t ProcessUsingVCH : 1; /* BitPos=3 */
      /* 0x0028 */ uint32_t ProcessUsingFTH : 1; /* BitPos=4 */
      /* 0x0028 */ uint32_t ProcessPreviouslyThrottled : 1; /* BitPos=5 */
      /* 0x0028 */ uint32_t ProcessCurrentlyThrottled : 1; /* BitPos=6 */
      /* 0x0028 */ uint32_t ProcessImagesHotPatched : 1; /* BitPos=7 */
      /* 0x0028 */ uint32_t ReservedBits0 : 24; /* BitPos=8 */
    };
  };
  union {
    /* 0x002c */ void* KernelCallbackTable;
    /* 0x002c */ void* UserSharedInfoPtr;
  };
  /* 0x0030 */ uint32_t SystemReserved;
  /* 0x0034 */ _SLIST_HEADER* AtlThunkSListPtr32;
  /* 0x0038 */ void* ApiSetMap;
  /* 0x003c */ uint32_t TlsExpansionCounter;
  /* 0x0040 */ void* TlsBitmap;
  /* 0x0044 */ uint32_t TlsBitmapBits[2];
  /* 0x004c */ void* ReadOnlySharedMemoryBase;
  /* 0x0050 */ void* SharedData;
  /* 0x0054 */ void** ReadOnlyStaticServerData;
  /* 0x0058 */ void* AnsiCodePageData;
  /* 0x005c */ void* OemCodePageData;
  /* 0x0060 */ void* UnicodeCaseTableData;
  /* 0x0064 */ uint32_t NumberOfProcessors;
  /* 0x0068 */ uint32_t NtGlobalFlag;
  /* 0x0070 */ _LARGE_INTEGER CriticalSectionTimeout;
  /* 0x0078 */ uint32_t HeapSegmentReserve;
  /* 0x007c */ uint32_t HeapSegmentCommit;
  /* 0x0080 */ uint32_t HeapDeCommitTotalFreeThreshold;
  /* 0x0084 */ uint32_t HeapDeCommitFreeBlockThreshold;
  /* 0x0088 */ uint32_t NumberOfHeaps;
  /* 0x008c */ uint32_t MaximumNumberOfHeaps;
  /* 0x0090 */ void** ProcessHeaps;
  /* 0x0094 */ void* GdiSharedHandleTable;
  /* 0x0098 */ void* ProcessStarterHelper;
  /* 0x009c */ uint32_t GdiDCAttributeList;
  /* 0x00a0 */ _RTL_CRITICAL_SECTION* LoaderLock;
  /* 0x00a4 */ uint32_t OSMajorVersion;
  /* 0x00a8 */ uint32_t OSMinorVersion;
  /* 0x00ac */ uint16_t OSBuildNumber;
  /* 0x00ae */ uint16_t OSCSDVersion;
  /* 0x00b0 */ uint32_t OSPlatformId;
  /* 0x00b4 */ uint32_t ImageSubsystem;
  /* 0x00b8 */ uint32_t ImageSubsystemMajorVersion;
  /* 0x00bc */ uint32_t ImageSubsystemMinorVersion;
  /* 0x00c0 */ uint32_t ActiveProcessAffinityMask;
  /* 0x00c4 */ uint32_t GdiHandleBuffer[34];
  /* 0x014c */ void (* PostProcessInitRoutine)();
  /* 0x0150 */ void* TlsExpansionBitmap;
  /* 0x0154 */ uint32_t TlsExpansionBitmapBits[32];
  /* 0x01d4 */ uint32_t SessionId;
  /* 0x01d8 */ _ULARGE_INTEGER AppCompatFlags;
  /* 0x01e0 */ _ULARGE_INTEGER AppCompatFlagsUser;
  /* 0x01e8 */ void* pShimData;
  /* 0x01ec */ void* AppCompatInfo;
  /* 0x01f0 */ _UNICODE_STRING CSDVersion;
  /* 0x01f8 */ const _ACTIVATION_CONTEXT_DATA* ActivationContextData;
  /* 0x01fc */ _ASSEMBLY_STORAGE_MAP* ProcessAssemblyStorageMap;
  /* 0x0200 */ const _ACTIVATION_CONTEXT_DATA* SystemDefaultActivationContextData;
  /* 0x0204 */ _ASSEMBLY_STORAGE_MAP* SystemAssemblyStorageMap;
  /* 0x0208 */ uint32_t MinimumStackCommit;
  /* 0x020c */ void* SparePointers[4];
  /* 0x021c */ uint32_t SpareUlongs[5];
  /* 0x0230 */ void* WerRegistrationData;
  /* 0x0234 */ void* WerShipAssertPtr;
  /* 0x0238 */ void* pUnused;
  /* 0x023c */ void* pImageHeaderHash;
  union {
    /* 0x0240 */ uint32_t TracingFlags;
    struct {
      /* 0x0240 */ uint32_t HeapTracingEnabled : 1; /* BitPos=0 */
      /* 0x0240 */ uint32_t CritSecTracingEnabled : 1; /* BitPos=1 */
      /* 0x0240 */ uint32_t LibLoaderTracingEnabled : 1; /* BitPos=2 */
      /* 0x0240 */ uint32_t SpareTracingBits : 29; /* BitPos=3 */
    };
  };
  /* 0x0248 */ uint64_t CsrServerReadOnlySharedMemoryBase;
  /* 0x0250 */ uint32_t TppWorkerpListLock;
  /* 0x0254 */ _LIST_ENTRY TppWorkerpList;
  /* 0x025c */ void* WaitOnAddressHashTable[128];
  /* 0x045c */ void* TelemetryCoverageHeader;
  /* 0x0460 */ uint32_t CloudFileFlags;
  /* 0x0464 */ uint32_t CloudFileDiagFlags;
  /* 0x0468 */ char PlaceholderCompatibilityMode;
  /* 0x0469 */ char PlaceholderCompatibilityModeReserved[7];
  /* 0x0470 */ _LEAP_SECOND_DATA* LeapSecondData;
  union {
    /* 0x0474 */ uint32_t LeapSecondFlags;
    struct {
      /* 0x0474 */ uint32_t SixtySecondEnabled : 1; /* BitPos=0 */
      /* 0x0474 */ uint32_t Reserved : 31; /* BitPos=1 */
    };
  };
  /* 0x0478 */ uint32_t NtGlobalFlag2;
};

struct _GUID { /* Size=0x10 */
  /* 0x0000 */ uint32_t Data1;
  /* 0x0004 */ uint16_t Data2;
  /* 0x0006 */ uint16_t Data3;
  /* 0x0008 */ unsigned char Data4[8];
};

struct _TEB { /* Size=0x1000 */
  /* 0x0000 */ _NT_TIB NtTib;
  /* 0x001c */ void* EnvironmentPointer;
  /* 0x0020 */ _CLIENT_ID ClientId;
  /* 0x0028 */ void* ActiveRpcHandle;
  /* 0x002c */ void* ThreadLocalStoragePointer;
  /* 0x0030 */ _PEB* ProcessEnvironmentBlock;
  /* 0x0034 */ uint32_t LastErrorValue;
  /* 0x0038 */ uint32_t CountOfOwnedCriticalSections;
  /* 0x003c */ void* CsrClientThread;
  /* 0x0040 */ void* Win32ThreadInfo;
  /* 0x0044 */ uint32_t User32Reserved[26];
  /* 0x00ac */ uint32_t UserReserved[5];
  /* 0x00c0 */ void* WOW32Reserved;
  /* 0x00c4 */ uint32_t CurrentLocale;
  /* 0x00c8 */ uint32_t FpSoftwareStatusRegister;
  /* 0x00cc */ void* ReservedForDebuggerInstrumentation[16];
  /* 0x010c */ void* SystemReserved1[26];
  /* 0x0174 */ char PlaceholderCompatibilityMode;
  /* 0x0175 */ unsigned char PlaceholderHydrationAlwaysExplicit;
  /* 0x0176 */ char PlaceholderReserved[10];
  /* 0x0180 */ uint32_t ProxiedProcessId;
  /* 0x0184 */ _ACTIVATION_CONTEXT_STACK _ActivationStack;
  /* 0x019c */ unsigned char WorkingOnBehalfTicket[8];
  /* 0x01a4 */ int32_t ExceptionCode;
  /* 0x01a8 */ _ACTIVATION_CONTEXT_STACK* ActivationContextStackPointer;
  /* 0x01ac */ uint32_t InstrumentationCallbackSp;
  /* 0x01b0 */ uint32_t InstrumentationCallbackPreviousPc;
  /* 0x01b4 */ uint32_t InstrumentationCallbackPreviousSp;
  /* 0x01b8 */ unsigned char InstrumentationCallbackDisabled;
  /* 0x01b9 */ unsigned char SpareBytes[23];
  /* 0x01d0 */ uint32_t TxFsContext;
  /* 0x01d4 */ _GDI_TEB_BATCH GdiTebBatch;
  /* 0x06b4 */ _CLIENT_ID RealClientId;
  /* 0x06bc */ void* GdiCachedProcessHandle;
  /* 0x06c0 */ uint32_t GdiClientPID;
  /* 0x06c4 */ uint32_t GdiClientTID;
  /* 0x06c8 */ void* GdiThreadLocalInfo;
  /* 0x06cc */ uint32_t Win32ClientInfo[62];
  /* 0x07c4 */ void* glDispatchTable[233];
  /* 0x0b68 */ uint32_t glReserved1[29];
  /* 0x0bdc */ void* glReserved2;
  /* 0x0be0 */ void* glSectionInfo;
  /* 0x0be4 */ void* glSection;
  /* 0x0be8 */ void* glTable;
  /* 0x0bec */ void* glCurrentRC;
  /* 0x0bf0 */ void* glContext;
  /* 0x0bf4 */ uint32_t LastStatusValue;
  /* 0x0bf8 */ _UNICODE_STRING StaticUnicodeString;
  /* 0x0c00 */ wchar_t StaticUnicodeBuffer[261];
  /* 0x0e0c */ void* DeallocationStack;
  /* 0x0e10 */ void* TlsSlots[64];
  /* 0x0f10 */ _LIST_ENTRY TlsLinks;
  /* 0x0f18 */ void* Vdm;
  /* 0x0f1c */ void* ReservedForNtRpc;
  /* 0x0f20 */ void* DbgSsReserved[2];
  /* 0x0f28 */ uint32_t HardErrorMode;
  /* 0x0f2c */ void* Instrumentation[9];
  /* 0x0f50 */ _GUID ActivityId;
  /* 0x0f60 */ void* SubProcessTag;
  /* 0x0f64 */ void* PerflibData;
  /* 0x0f68 */ void* EtwTraceData;
  /* 0x0f6c */ void* WinSockData;
  /* 0x0f70 */ uint32_t GdiBatchCount;
  union {
    /* 0x0f74 */ _PROCESSOR_NUMBER CurrentIdealProcessor;
    /* 0x0f74 */ uint32_t IdealProcessorValue;
    struct {
      /* 0x0f74 */ unsigned char ReservedPad0;
      /* 0x0f75 */ unsigned char ReservedPad1;
      /* 0x0f76 */ unsigned char ReservedPad2;
      /* 0x0f77 */ unsigned char IdealProcessor;
    };
  };
  /* 0x0f78 */ uint32_t GuaranteedStackBytes;
  /* 0x0f7c */ void* ReservedForPerf;
  /* 0x0f80 */ void* ReservedForOle;
  /* 0x0f84 */ uint32_t WaitingOnLoaderLock;
  /* 0x0f88 */ void* SavedPriorityState;
  /* 0x0f8c */ uint32_t ReservedForCodeCoverage;
  /* 0x0f90 */ void* ThreadPoolData;
  /* 0x0f94 */ void** TlsExpansionSlots;
  /* 0x0f98 */ uint32_t MuiGeneration;
  /* 0x0f9c */ uint32_t IsImpersonating;
  /* 0x0fa0 */ void* NlsCache;
  /* 0x0fa4 */ void* pShimData;
  /* 0x0fa8 */ uint32_t HeapData;
  /* 0x0fac */ void* CurrentTransactionHandle;
  /* 0x0fb0 */ _TEB_ACTIVE_FRAME* ActiveFrame;
  /* 0x0fb4 */ void* FlsData;
  /* 0x0fb8 */ void* PreferredLanguages;
  /* 0x0fbc */ void* UserPrefLanguages;
  /* 0x0fc0 */ void* MergedPrefLanguages;
  /* 0x0fc4 */ uint32_t MuiImpersonation;
  union {
    /* 0x0fc8 */ volatile uint16_t CrossTebFlags;
    /* 0x0fc8 */ uint16_t SpareCrossTebBits : 16; /* BitPos=0 */
  };
  union {
    /* 0x0fca */ uint16_t SameTebFlags;
    struct {
      /* 0x0fca */ uint16_t SafeThunkCall : 1; /* BitPos=0 */
      /* 0x0fca */ uint16_t InDebugPrint : 1; /* BitPos=1 */
      /* 0x0fca */ uint16_t HasFiberData : 1; /* BitPos=2 */
      /* 0x0fca */ uint16_t SkipThreadAttach : 1; /* BitPos=3 */
      /* 0x0fca */ uint16_t WerInShipAssertCode : 1; /* BitPos=4 */
      /* 0x0fca */ uint16_t RanProcessInit : 1; /* BitPos=5 */
      /* 0x0fca */ uint16_t ClonedThread : 1; /* BitPos=6 */
      /* 0x0fca */ uint16_t SuppressDebugMsg : 1; /* BitPos=7 */
      /* 0x0fca */ uint16_t DisableUserStackWalk : 1; /* BitPos=8 */
      /* 0x0fca */ uint16_t RtlExceptionAttached : 1; /* BitPos=9 */
      /* 0x0fca */ uint16_t InitialThread : 1; /* BitPos=10 */
      /* 0x0fca */ uint16_t SessionAware : 1; /* BitPos=11 */
      /* 0x0fca */ uint16_t LoadOwner : 1; /* BitPos=12 */
      /* 0x0fca */ uint16_t LoaderWorker : 1; /* BitPos=13 */
      /* 0x0fca */ uint16_t SkipLoaderInit : 1; /* BitPos=14 */
      /* 0x0fca */ uint16_t SpareSameTebBits : 1; /* BitPos=15 */
    };
  };
  /* 0x0fcc */ void* TxnScopeEnterCallback;
  /* 0x0fd0 */ void* TxnScopeExitCallback;
  /* 0x0fd4 */ void* TxnScopeContext;
  /* 0x0fd8 */ uint32_t LockCount;
  /* 0x0fdc */ int32_t WowTebOffset;
  /* 0x0fe0 */ void* ResourceRetValue;
  /* 0x0fe4 */ void* ReservedForWdf;
  /* 0x0fe8 */ uint64_t ReservedForCrt;
  /* 0x0ff0 */ _GUID EffectiveContainerId;
};

struct _LDRP_CSLIST { /* Size=0x4 */
    /* 0x0000 */ _SINGLE_LIST_ENTRY* Tail;
};

struct _LDR_SERVICE_TAG_RECORD { /* Size=0x8 */
/* 0x0000 */ public: _LDR_SERVICE_TAG_RECORD* Next;
/* 0x0004 */ public: uint32_t ServiceTag;
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

struct _LDR_DDAG_NODE { /* Size=0x2c */
    /* 0x0000 */ _LIST_ENTRY Modules;
    /* 0x0008 */ _LDR_SERVICE_TAG_RECORD* ServiceTagList;
    /* 0x000c */ uint32_t LoadCount;
    /* 0x0010 */ uint32_t LoadWhileUnloadingCount;
    /* 0x0014 */ uint32_t LowestLink;
    /* 0x0018 */ _LDRP_CSLIST Dependencies;
    /* 0x001c */ _LDRP_CSLIST IncomingDependencies;
    /* 0x0020 */ _LDR_DDAG_STATE State;
    /* 0x0024 */ _SINGLE_LIST_ENTRY CondenseLink;
    /* 0x0028 */ uint32_t PreorderNumber;
};

struct _RTL_BALANCED_NODE { /* Size=0xc */
    union {
        /* 0x0000 */ _RTL_BALANCED_NODE* Children[2];
        struct {
            /* 0x0000 */ _RTL_BALANCED_NODE* Left;
            /* 0x0004 */ _RTL_BALANCED_NODE* Right;
        };
    };
    union {
        /* 0x0008 */ unsigned char Red : 1; /* BitPos=0 */
        /* 0x0008 */ unsigned char Balance : 2; /* BitPos=0 */
        /* 0x0008 */ uint32_t ParentValue;
    };
};

struct _LDR_DATA_TABLE_ENTRY { /* Size=0xa8 */
    /* 0x0000 */ _LIST_ENTRY InLoadOrderLinks;
    /* 0x0008 */ _LIST_ENTRY InMemoryOrderLinks;
    /* 0x0010 */ _LIST_ENTRY InInitializationOrderLinks;
    /* 0x0018 */ void* DllBase;
    /* 0x001c */ void* EntryPoint;
    /* 0x0020 */ uint32_t SizeOfImage;
    /* 0x0024 */ _UNICODE_STRING FullDllName;
    /* 0x002c */ _UNICODE_STRING BaseDllName;
    union {
        /* 0x0034 */ unsigned char FlagGroup[4];
        /* 0x0034 */ uint32_t Flags;
        struct {
            /* 0x0034 */ uint32_t PackagedBinary : 1; /* BitPos=0 */
            /* 0x0034 */ uint32_t MarkedForRemoval : 1; /* BitPos=1 */
            /* 0x0034 */ uint32_t ImageDll : 1; /* BitPos=2 */
            /* 0x0034 */ uint32_t LoadNotificationsSent : 1; /* BitPos=3 */
            /* 0x0034 */ uint32_t TelemetryEntryProcessed : 1; /* BitPos=4 */
            /* 0x0034 */ uint32_t ProcessStaticImport : 1; /* BitPos=5 */
            /* 0x0034 */ uint32_t InLegacyLists : 1; /* BitPos=6 */
            /* 0x0034 */ uint32_t InIndexes : 1; /* BitPos=7 */
            /* 0x0034 */ uint32_t ShimDll : 1; /* BitPos=8 */
            /* 0x0034 */ uint32_t InExceptionTable : 1; /* BitPos=9 */
            /* 0x0034 */ uint32_t ReservedFlags1 : 2; /* BitPos=10 */
            /* 0x0034 */ uint32_t LoadInProgress : 1; /* BitPos=12 */
            /* 0x0034 */ uint32_t LoadConfigProcessed : 1; /* BitPos=13 */
            /* 0x0034 */ uint32_t EntryProcessed : 1; /* BitPos=14 */
            /* 0x0034 */ uint32_t ProtectDelayLoad : 1; /* BitPos=15 */
            /* 0x0034 */ uint32_t ReservedFlags3 : 2; /* BitPos=16 */
            /* 0x0034 */ uint32_t DontCallForThreads : 1; /* BitPos=18 */
            /* 0x0034 */ uint32_t ProcessAttachCalled : 1; /* BitPos=19 */
            /* 0x0034 */ uint32_t ProcessAttachFailed : 1; /* BitPos=20 */
            /* 0x0034 */ uint32_t CorDeferredValidate : 1; /* BitPos=21 */
            /* 0x0034 */ uint32_t CorImage : 1; /* BitPos=22 */
            /* 0x0034 */ uint32_t DontRelocate : 1; /* BitPos=23 */
            /* 0x0034 */ uint32_t CorILOnly : 1; /* BitPos=24 */
            /* 0x0034 */ uint32_t ChpeImage : 1; /* BitPos=25 */
            /* 0x0034 */ uint32_t ReservedFlags5 : 2; /* BitPos=26 */
            /* 0x0034 */ uint32_t Redirected : 1; /* BitPos=28 */
            /* 0x0034 */ uint32_t ReservedFlags6 : 2; /* BitPos=29 */
            /* 0x0034 */ uint32_t CompatDatabaseProcessed : 1; /* BitPos=31 */
        };
    };
    /* 0x0038 */ uint16_t ObsoleteLoadCount;
    /* 0x003a */ uint16_t TlsIndex;
    /* 0x003c */ _LIST_ENTRY HashLinks;
    /* 0x0044 */ uint32_t TimeDateStamp;
    /* 0x0048 */ _ACTIVATION_CONTEXT* EntryPointActivationContext;
    /* 0x004c */ void* Lock;
    /* 0x0050 */ _LDR_DDAG_NODE* DdagNode;
    /* 0x0054 */ _LIST_ENTRY NodeModuleLink;
    /* 0x005c */ _LDRP_LOAD_CONTEXT* LoadContext;
    /* 0x0060 */ void* ParentDllBase;
    /* 0x0064 */ void* SwitchBackContext;
    /* 0x0068 */ _RTL_BALANCED_NODE BaseAddressIndexNode;
    /* 0x0074 */ _RTL_BALANCED_NODE MappingInfoIndexNode;
    /* 0x0080 */ uint32_t OriginalBase;
    /* 0x0088 */ _LARGE_INTEGER LoadTime;
    /* 0x0090 */ uint32_t BaseNameHashValue;
    /* 0x0094 */ _LDR_DLL_LOAD_REASON LoadReason;
    /* 0x0098 */ uint32_t ImplicitPathOptions;
    /* 0x009c */ uint32_t ReferenceCount;
    /* 0x00a0 */ uint32_t DependentLoadFlags;
    /* 0x00a4 */ unsigned char SigningLevel;
};
