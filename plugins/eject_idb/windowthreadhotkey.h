#pragma once

#include <windows.h>
#include <thread>

class CWindowThreadHotkey {
public:
    CWindowThreadHotkey();
    ~CWindowThreadHotkey();
    void start();
    void stop();

private:
    static LRESULT CALLBACK WndProc(HWND hwnd, UINT msg, WPARAM wParam, LPARAM lParam);
    static void ThreadFunc(CWindowThreadHotkey* pThis);
    void eject();

    HWND m_hwnd;
    std::thread m_thread;
    bool m_running;
};
