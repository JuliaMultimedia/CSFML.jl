# Julia wrapper for header: /Users/gnimuc/.julia/dev/LibCSFML/gen/../deps/usr/include/SFML/Window.h
# Automatically generated using Clang.jl

# Julia wrapper for header: /Users/gnimuc/.julia/dev/LibCSFML/gen/../deps/usr/include/SFML/Window/Clipboard.h
# Automatically generated using Clang.jl


function sfClipboard_getString()
    ccall((:sfClipboard_getString, libcsfml_window), Cstring, ())
end

function sfClipboard_getUnicodeString()
    ccall((:sfClipboard_getUnicodeString, libcsfml_window), Ptr{sfUint32}, ())
end

function sfClipboard_setString(text)
    ccall((:sfClipboard_setString, libcsfml_window), Cvoid, (Cstring,), text)
end

function sfClipboard_setUnicodeString(text)
    ccall((:sfClipboard_setUnicodeString, libcsfml_window), Cvoid, (Ptr{sfUint32},), text)
end
# Julia wrapper for header: /Users/gnimuc/.julia/dev/LibCSFML/gen/../deps/usr/include/SFML/Window/Context.h
# Automatically generated using Clang.jl


function sfContext_create()
    ccall((:sfContext_create, libcsfml_window), Ptr{sfContext}, ())
end

function sfContext_destroy(context)
    ccall((:sfContext_destroy, libcsfml_window), Cvoid, (Ptr{sfContext},), context)
end

function sfContext_setActive(context, active)
    ccall((:sfContext_setActive, libcsfml_window), sfBool, (Ptr{sfContext}, sfBool), context, active)
end

function sfContext_getSettings(context)
    ccall((:sfContext_getSettings, libcsfml_window), sfContextSettings, (Ptr{sfContext},), context)
end

function sfContext_getActiveContextId()
    ccall((:sfContext_getActiveContextId, libcsfml_window), sfUint64, ())
end
# Julia wrapper for header: /Users/gnimuc/.julia/dev/LibCSFML/gen/../deps/usr/include/SFML/Window/Cursor.h
# Automatically generated using Clang.jl


function sfCursor_createFromPixels(pixels, size, hotspot)
    ccall((:sfCursor_createFromPixels, libcsfml_window), Ptr{sfCursor}, (Ptr{sfUint8}, sfVector2u, sfVector2u), pixels, size, hotspot)
end

function sfCursor_createFromSystem(type)
    ccall((:sfCursor_createFromSystem, libcsfml_window), Ptr{sfCursor}, (sfCursorType,), type)
end

function sfCursor_destroy(cursor)
    ccall((:sfCursor_destroy, libcsfml_window), Cvoid, (Ptr{sfCursor},), cursor)
end
# Julia wrapper for header: /Users/gnimuc/.julia/dev/LibCSFML/gen/../deps/usr/include/SFML/Window/Event.h
# Automatically generated using Clang.jl

# Julia wrapper for header: /Users/gnimuc/.julia/dev/LibCSFML/gen/../deps/usr/include/SFML/Window/Export.h
# Automatically generated using Clang.jl

# Julia wrapper for header: /Users/gnimuc/.julia/dev/LibCSFML/gen/../deps/usr/include/SFML/Window/Joystick.h
# Automatically generated using Clang.jl


function sfJoystick_isConnected(joystick)
    ccall((:sfJoystick_isConnected, libcsfml_window), sfBool, (UInt32,), joystick)
end

function sfJoystick_getButtonCount(joystick)
    ccall((:sfJoystick_getButtonCount, libcsfml_window), UInt32, (UInt32,), joystick)
end

function sfJoystick_hasAxis(joystick, axis)
    ccall((:sfJoystick_hasAxis, libcsfml_window), sfBool, (UInt32, sfJoystickAxis), joystick, axis)
end

function sfJoystick_isButtonPressed(joystick, button)
    ccall((:sfJoystick_isButtonPressed, libcsfml_window), sfBool, (UInt32, UInt32), joystick, button)
end

function sfJoystick_getAxisPosition(joystick, axis)
    ccall((:sfJoystick_getAxisPosition, libcsfml_window), Cfloat, (UInt32, sfJoystickAxis), joystick, axis)
end

function sfJoystick_getIdentification(joystick)
    ccall((:sfJoystick_getIdentification, libcsfml_window), sfJoystickIdentification, (UInt32,), joystick)
end

function sfJoystick_update()
    ccall((:sfJoystick_update, libcsfml_window), Cvoid, ())
end
# Julia wrapper for header: /Users/gnimuc/.julia/dev/LibCSFML/gen/../deps/usr/include/SFML/Window/JoystickIdentification.h
# Automatically generated using Clang.jl

# Julia wrapper for header: /Users/gnimuc/.julia/dev/LibCSFML/gen/../deps/usr/include/SFML/Window/Keyboard.h
# Automatically generated using Clang.jl


function sfKeyboard_isKeyPressed(key)
    ccall((:sfKeyboard_isKeyPressed, libcsfml_window), sfBool, (sfKeyCode,), key)
end

function sfKeyboard_setVirtualKeyboardVisible(visible)
    ccall((:sfKeyboard_setVirtualKeyboardVisible, libcsfml_window), Cvoid, (sfBool,), visible)
end
# Julia wrapper for header: /Users/gnimuc/.julia/dev/LibCSFML/gen/../deps/usr/include/SFML/Window/Mouse.h
# Automatically generated using Clang.jl


function sfMouse_isButtonPressed(button)
    ccall((:sfMouse_isButtonPressed, libcsfml_window), sfBool, (sfMouseButton,), button)
end

function sfMouse_getPosition(relativeTo)
    ccall((:sfMouse_getPosition, libcsfml_window), sfVector2i, (Ptr{sfWindow},), relativeTo)
end

function sfMouse_setPosition(position, relativeTo)
    ccall((:sfMouse_setPosition, libcsfml_window), Cvoid, (sfVector2i, Ptr{sfWindow}), position, relativeTo)
end
# Julia wrapper for header: /Users/gnimuc/.julia/dev/LibCSFML/gen/../deps/usr/include/SFML/Window/Sensor.h
# Automatically generated using Clang.jl


function sfSensor_isAvailable(sensor)
    ccall((:sfSensor_isAvailable, libcsfml_window), sfBool, (sfSensorType,), sensor)
end

function sfSensor_setEnabled(sensor, enabled)
    ccall((:sfSensor_setEnabled, libcsfml_window), Cvoid, (sfSensorType, sfBool), sensor, enabled)
end

function sfSensor_getValue(sensor)
    ccall((:sfSensor_getValue, libcsfml_window), sfVector3f, (sfSensorType,), sensor)
end
# Julia wrapper for header: /Users/gnimuc/.julia/dev/LibCSFML/gen/../deps/usr/include/SFML/Window/Touch.h
# Automatically generated using Clang.jl


function sfTouch_isDown(finger)
    ccall((:sfTouch_isDown, libcsfml_window), sfBool, (UInt32,), finger)
end

function sfTouch_getPosition(finger, relativeTo)
    ccall((:sfTouch_getPosition, libcsfml_window), sfVector2i, (UInt32, Ptr{sfWindow}), finger, relativeTo)
end
# Julia wrapper for header: /Users/gnimuc/.julia/dev/LibCSFML/gen/../deps/usr/include/SFML/Window/Types.h
# Automatically generated using Clang.jl

# Julia wrapper for header: /Users/gnimuc/.julia/dev/LibCSFML/gen/../deps/usr/include/SFML/Window/VideoMode.h
# Automatically generated using Clang.jl


function sfVideoMode_getDesktopMode()
    ccall((:sfVideoMode_getDesktopMode, libcsfml_window), sfVideoMode, ())
end

function sfVideoMode_getFullscreenModes(count)
    ccall((:sfVideoMode_getFullscreenModes, libcsfml_window), Ptr{sfVideoMode}, (Ptr{Csize_t},), count)
end

function sfVideoMode_isValid(mode)
    ccall((:sfVideoMode_isValid, libcsfml_window), sfBool, (sfVideoMode,), mode)
end
# Julia wrapper for header: /Users/gnimuc/.julia/dev/LibCSFML/gen/../deps/usr/include/SFML/Window/Window.h
# Automatically generated using Clang.jl


function sfWindow_create(mode, title, style, settings)
    ccall((:sfWindow_create, libcsfml_window), Ptr{sfWindow}, (sfVideoMode, Cstring, sfUint32, Ptr{sfContextSettings}), mode, title, style, settings)
end

function sfWindow_createUnicode(mode, title, style, settings)
    ccall((:sfWindow_createUnicode, libcsfml_window), Ptr{sfWindow}, (sfVideoMode, Ptr{sfUint32}, sfUint32, Ptr{sfContextSettings}), mode, title, style, settings)
end

function sfWindow_createFromHandle(handle, settings)
    ccall((:sfWindow_createFromHandle, libcsfml_window), Ptr{sfWindow}, (sfWindowHandle, Ptr{sfContextSettings}), handle, settings)
end

function sfWindow_destroy(window)
    ccall((:sfWindow_destroy, libcsfml_window), Cvoid, (Ptr{sfWindow},), window)
end

function sfWindow_close(window)
    ccall((:sfWindow_close, libcsfml_window), Cvoid, (Ptr{sfWindow},), window)
end

function sfWindow_isOpen(window)
    ccall((:sfWindow_isOpen, libcsfml_window), sfBool, (Ptr{sfWindow},), window)
end

function sfWindow_getSettings(window)
    ccall((:sfWindow_getSettings, libcsfml_window), sfContextSettings, (Ptr{sfWindow},), window)
end

function sfWindow_pollEvent(window, event)
    ccall((:sfWindow_pollEvent, libcsfml_window), sfBool, (Ptr{sfWindow}, Ptr{sfEvent}), window, event)
end

function sfWindow_waitEvent(window, event)
    ccall((:sfWindow_waitEvent, libcsfml_window), sfBool, (Ptr{sfWindow}, Ptr{sfEvent}), window, event)
end

function sfWindow_getPosition(window)
    ccall((:sfWindow_getPosition, libcsfml_window), sfVector2i, (Ptr{sfWindow},), window)
end

function sfWindow_setPosition(window, position)
    ccall((:sfWindow_setPosition, libcsfml_window), Cvoid, (Ptr{sfWindow}, sfVector2i), window, position)
end

function sfWindow_getSize(window)
    ccall((:sfWindow_getSize, libcsfml_window), sfVector2u, (Ptr{sfWindow},), window)
end

function sfWindow_setSize(window, size)
    ccall((:sfWindow_setSize, libcsfml_window), Cvoid, (Ptr{sfWindow}, sfVector2u), window, size)
end

function sfWindow_setTitle(window, title)
    ccall((:sfWindow_setTitle, libcsfml_window), Cvoid, (Ptr{sfWindow}, Cstring), window, title)
end

function sfWindow_setUnicodeTitle(window, title)
    ccall((:sfWindow_setUnicodeTitle, libcsfml_window), Cvoid, (Ptr{sfWindow}, Ptr{sfUint32}), window, title)
end

function sfWindow_setIcon(window, width, height, pixels)
    ccall((:sfWindow_setIcon, libcsfml_window), Cvoid, (Ptr{sfWindow}, UInt32, UInt32, Ptr{sfUint8}), window, width, height, pixels)
end

function sfWindow_setVisible(window, visible)
    ccall((:sfWindow_setVisible, libcsfml_window), Cvoid, (Ptr{sfWindow}, sfBool), window, visible)
end

function sfWindow_setVerticalSyncEnabled(window, enabled)
    ccall((:sfWindow_setVerticalSyncEnabled, libcsfml_window), Cvoid, (Ptr{sfWindow}, sfBool), window, enabled)
end

function sfWindow_setMouseCursorVisible(window, visible)
    ccall((:sfWindow_setMouseCursorVisible, libcsfml_window), Cvoid, (Ptr{sfWindow}, sfBool), window, visible)
end

function sfWindow_setMouseCursorGrabbed(window, grabbed)
    ccall((:sfWindow_setMouseCursorGrabbed, libcsfml_window), Cvoid, (Ptr{sfWindow}, sfBool), window, grabbed)
end

function sfWindow_setMouseCursor(window, cursor)
    ccall((:sfWindow_setMouseCursor, libcsfml_window), Cvoid, (Ptr{sfWindow}, Ptr{sfCursor}), window, cursor)
end

function sfWindow_setKeyRepeatEnabled(window, enabled)
    ccall((:sfWindow_setKeyRepeatEnabled, libcsfml_window), Cvoid, (Ptr{sfWindow}, sfBool), window, enabled)
end

function sfWindow_setFramerateLimit(window, limit)
    ccall((:sfWindow_setFramerateLimit, libcsfml_window), Cvoid, (Ptr{sfWindow}, UInt32), window, limit)
end

function sfWindow_setJoystickThreshold(window, threshold)
    ccall((:sfWindow_setJoystickThreshold, libcsfml_window), Cvoid, (Ptr{sfWindow}, Cfloat), window, threshold)
end

function sfWindow_setActive(window, active)
    ccall((:sfWindow_setActive, libcsfml_window), sfBool, (Ptr{sfWindow}, sfBool), window, active)
end

function sfWindow_requestFocus(window)
    ccall((:sfWindow_requestFocus, libcsfml_window), Cvoid, (Ptr{sfWindow},), window)
end

function sfWindow_hasFocus(window)
    ccall((:sfWindow_hasFocus, libcsfml_window), sfBool, (Ptr{sfWindow},), window)
end

function sfWindow_display(window)
    ccall((:sfWindow_display, libcsfml_window), Cvoid, (Ptr{sfWindow},), window)
end

function sfWindow_getSystemHandle(window)
    ccall((:sfWindow_getSystemHandle, libcsfml_window), sfWindowHandle, (Ptr{sfWindow},), window)
end
# Julia wrapper for header: /Users/gnimuc/.julia/dev/LibCSFML/gen/../deps/usr/include/SFML/Window/WindowHandle.h
# Automatically generated using Clang.jl

