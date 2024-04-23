#pragma once

#include <windows.h>
#include <thread>

class CWindowThreadHotkey 
{
private:
    static LRESULT CALLBACK WndProc(HWND hwnd, UINT msg, WPARAM wParam, LPARAM lParam);
    static void ThreadFunc(CWindowThreadHotkey* pThis);
    void eject();

    HWND m_hwnd;
    std::thread m_thread;
    bool m_running;
public:
    CWindowThreadHotkey();
    ~CWindowThreadHotkey();
    void Start();
    void Stop();

};

#define WM_STOP_THREAD (WM_USER + 1)
#define HOTKEY_ID 1

#define EJECTIDB_HOTKEYMOD (MOD_CONTROL | MOD_ALT)
#define EJECTIDB_HOTKEY 'E'
