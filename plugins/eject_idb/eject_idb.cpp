#include <cstdio>
#include <cstring>

#ifdef _WIN32
    #include <windows.h>
#elif __APPLE__ || __linux__
    #include <fcntl.h>
    #include <sys/stat.h>
    #include <semaphore.h>
#else
    #error "Platform not supported"
#endif

#include "utils.hpp"

int main(int argc, char* argv[])
{
    if (argc < 2)
    {
        printf("Usage: %s <IDB file path>\n", argv[0]);
        return 1;
    }

#ifdef __TESTING__
    char input[100]; // buffer for user input
    printf("eject_idb waiting...press ENTER to continue\n");
    fgets(input, sizeof(input), stdin); // read a line, user must press enter
#endif

    char sem_name[64];
    make_semaphore_name(argv[1], sem_name, sizeof(sem_name));
    do
    {
#ifdef _WIN32
        HANDLE hSemaphore = OpenSemaphoreA(SEMAPHORE_MODIFY_STATE, FALSE, sem_name);
        if (hSemaphore == NULL)
            break;
        ReleaseSemaphore(hSemaphore, 1, NULL);
        CloseHandle(hSemaphore);
#else
        sem_t* sem = sem_open(sem_name, 0);
        if (sem == SEM_FAILED)
            break;
        sem_post(sem);
        sem_close(sem);
#endif
        printf("Ejected %s\n", argv[1]);
		return 0;
    } while (false);

    printf("Failed to eject %s\n", argv[1]);
    return 1;
}
