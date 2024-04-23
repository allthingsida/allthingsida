#include "windowthreadhotkey.h"

#define WM_STOP_THREAD (WM_USER + 1)
#define HOTKEY_ID 1

CWindowThreadHotkey::CWindowThreadHotkey() : m_hwnd(nullptr), m_running(false) {}

CWindowThreadHotkey::~CWindowThreadHotkey() {
    stop();
}

void CWindowThreadHotkey::start() {
    m_running = true;
    m_thread = std::thread(ThreadFunc, this);
}

void CWindowThreadHotkey::stop() {
    if (m_running) {
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
            SetWindowLongPtr(hwnd, GWLP_USERDATA, reinterpret_cast<LONG_PTR>(reinterpret_cast<CREATESTRUCT*>(lParam)->lpCreateParams));
            RegisterHotKey(hwnd, HOTKEY_ID, MOD_CONTROL | MOD_ALT, 'E');
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
    WNDCLASS wc = {0};
    wc.lpfnWndProc = WndProc;
    wc.hInstance = GetModuleHandle(nullptr);
    wc.lpszClassName = L"HiddenWindow";
    RegisterClass(&wc);

    pThis->m_hwnd = CreateWindow(L"HiddenWindow", nullptr, 0, 0, 0, 0, 0, HWND_MESSAGE, nullptr, nullptr, nullptr);
    SetWindowLongPtr(pThis->m_hwnd, GWLP_USERDATA, reinterpret_cast<LONG_PTR>(pThis));

    MSG msg;
    while (GetMessage(&msg, nullptr, 0, 0)) {
        TranslateMessage(&msg);
        DispatchMessage(&msg);
    }
}

extern "C" void do_eject();

void CWindowThreadHotkey::eject() {
    // Dummy function called when the hotkey is pressed
    do_eject();
}
