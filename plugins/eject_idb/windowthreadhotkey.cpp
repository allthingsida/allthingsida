#include "windowthreadhotkey.h"

CWindowThreadHotkey::CWindowThreadHotkey() : m_hwnd(nullptr), m_running(false) {}

CWindowThreadHotkey::~CWindowThreadHotkey() 
{
    Stop();
}

void CWindowThreadHotkey::Start() 
{
    m_running = true;
    m_thread = std::thread(ThreadFunc, this);
}

void CWindowThreadHotkey::Stop() 
{
    if (m_running) 
    {
        m_running = false;
        PostMessage(m_hwnd, WM_STOP_THREAD, 0, 0);
        m_thread.join();
    }
}

LRESULT CALLBACK CWindowThreadHotkey::WndProc(HWND hwnd, UINT msg, WPARAM wParam, LPARAM lParam)
{
    CWindowThreadHotkey* pThis = reinterpret_cast<CWindowThreadHotkey*>(GetWindowLongPtr(hwnd, GWLP_USERDATA));

    switch (msg)
    {
        case WM_CREATE:
            RegisterHotKey(hwnd, HOTKEY_ID, EJECTIDB_HOTKEYMOD, EJECTIDB_HOTKEY);
            break;
        case WM_HOTKEY:
            if (wParam == HOTKEY_ID)
                pThis->eject();
            break;
        case WM_STOP_THREAD:
            PostQuitMessage(0);
            break;
        default:
            return DefWindowProc(hwnd, msg, wParam, lParam);
    }
    return 0;
}

void CWindowThreadHotkey::ThreadFunc(CWindowThreadHotkey* pThis)
{
    WNDCLASS wc = { 0 };
    const WCHAR szClassName[] = L"eject_idb_HiddenWindow";
    wc.lpfnWndProc = WndProc;
    wc.hInstance = GetModuleHandle(nullptr);
    wc.lpszClassName = szClassName;
    RegisterClass(&wc);

    pThis->m_hwnd = CreateWindow(szClassName, nullptr, 0, 0, 0, 0, 0, HWND_MESSAGE, nullptr, nullptr, nullptr);
    SetWindowLongPtr(pThis->m_hwnd, GWLP_USERDATA, reinterpret_cast<LONG_PTR>(pThis));

    MSG msg;
    while (GetMessage(&msg, nullptr, 0, 0)) 
    {
        TranslateMessage(&msg);
        DispatchMessage(&msg);
    }
}

extern "C" void do_eject();

void CWindowThreadHotkey::eject() {
    // Dummy function called when the hotkey is pressed
    do_eject();
}
