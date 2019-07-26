# Automatically generated using Clang.jl


@cenum(sfCursorType,
    sfCursorArrow = 0,
    sfCursorArrowWait = 1,
    sfCursorWait = 2,
    sfCursorText = 3,
    sfCursorHand = 4,
    sfCursorSizeHorizontal = 5,
    sfCursorSizeVertical = 6,
    sfCursorSizeTopLeftBottomRight = 7,
    sfCursorSizeBottomLeftTopRight = 8,
    sfCursorSizeAll = 9,
    sfCursorCross = 10,
    sfCursorHelp = 11,
    sfCursorNotAllowed = 12,
)
@cenum(sfEventType,
    sfEvtClosed = 0,
    sfEvtResized = 1,
    sfEvtLostFocus = 2,
    sfEvtGainedFocus = 3,
    sfEvtTextEntered = 4,
    sfEvtKeyPressed = 5,
    sfEvtKeyReleased = 6,
    sfEvtMouseWheelMoved = 7,
    sfEvtMouseWheelScrolled = 8,
    sfEvtMouseButtonPressed = 9,
    sfEvtMouseButtonReleased = 10,
    sfEvtMouseMoved = 11,
    sfEvtMouseEntered = 12,
    sfEvtMouseLeft = 13,
    sfEvtJoystickButtonPressed = 14,
    sfEvtJoystickButtonReleased = 15,
    sfEvtJoystickMoved = 16,
    sfEvtJoystickConnected = 17,
    sfEvtJoystickDisconnected = 18,
    sfEvtTouchBegan = 19,
    sfEvtTouchMoved = 20,
    sfEvtTouchEnded = 21,
    sfEvtSensorChanged = 22,
    sfEvtCount = 23,
)
@cenum(sfKeyCode{Int32},
    sfKeyUnknown = -1,
    sfKeyA = 0,
    sfKeyB = 1,
    sfKeyC = 2,
    sfKeyD = 3,
    sfKeyE = 4,
    sfKeyF = 5,
    sfKeyG = 6,
    sfKeyH = 7,
    sfKeyI = 8,
    sfKeyJ = 9,
    sfKeyK = 10,
    sfKeyL = 11,
    sfKeyM = 12,
    sfKeyN = 13,
    sfKeyO = 14,
    sfKeyP = 15,
    sfKeyQ = 16,
    sfKeyR = 17,
    sfKeyS = 18,
    sfKeyT = 19,
    sfKeyU = 20,
    sfKeyV = 21,
    sfKeyW = 22,
    sfKeyX = 23,
    sfKeyY = 24,
    sfKeyZ = 25,
    sfKeyNum0 = 26,
    sfKeyNum1 = 27,
    sfKeyNum2 = 28,
    sfKeyNum3 = 29,
    sfKeyNum4 = 30,
    sfKeyNum5 = 31,
    sfKeyNum6 = 32,
    sfKeyNum7 = 33,
    sfKeyNum8 = 34,
    sfKeyNum9 = 35,
    sfKeyEscape = 36,
    sfKeyLControl = 37,
    sfKeyLShift = 38,
    sfKeyLAlt = 39,
    sfKeyLSystem = 40,
    sfKeyRControl = 41,
    sfKeyRShift = 42,
    sfKeyRAlt = 43,
    sfKeyRSystem = 44,
    sfKeyMenu = 45,
    sfKeyLBracket = 46,
    sfKeyRBracket = 47,
    sfKeySemicolon = 48,
    sfKeyComma = 49,
    sfKeyPeriod = 50,
    sfKeyQuote = 51,
    sfKeySlash = 52,
    sfKeyBackslash = 53,
    sfKeyTilde = 54,
    sfKeyEqual = 55,
    sfKeyHyphen = 56,
    sfKeySpace = 57,
    sfKeyEnter = 58,
    sfKeyBackspace = 59,
    sfKeyTab = 60,
    sfKeyPageUp = 61,
    sfKeyPageDown = 62,
    sfKeyEnd = 63,
    sfKeyHome = 64,
    sfKeyInsert = 65,
    sfKeyDelete = 66,
    sfKeyAdd = 67,
    sfKeySubtract = 68,
    sfKeyMultiply = 69,
    sfKeyDivide = 70,
    sfKeyLeft = 71,
    sfKeyRight = 72,
    sfKeyUp = 73,
    sfKeyDown = 74,
    sfKeyNumpad0 = 75,
    sfKeyNumpad1 = 76,
    sfKeyNumpad2 = 77,
    sfKeyNumpad3 = 78,
    sfKeyNumpad4 = 79,
    sfKeyNumpad5 = 80,
    sfKeyNumpad6 = 81,
    sfKeyNumpad7 = 82,
    sfKeyNumpad8 = 83,
    sfKeyNumpad9 = 84,
    sfKeyF1 = 85,
    sfKeyF2 = 86,
    sfKeyF3 = 87,
    sfKeyF4 = 88,
    sfKeyF5 = 89,
    sfKeyF6 = 90,
    sfKeyF7 = 91,
    sfKeyF8 = 92,
    sfKeyF9 = 93,
    sfKeyF10 = 94,
    sfKeyF11 = 95,
    sfKeyF12 = 96,
    sfKeyF13 = 97,
    sfKeyF14 = 98,
    sfKeyF15 = 99,
    sfKeyPause = 100,
    sfKeyCount = 101,
    sfKeyDash = 56,
    sfKeyBack = 59,
    sfKeyBackSlash = 53,
    sfKeySemiColon = 48,
    sfKeyReturn = 58,
)

struct sfKeyEvent
    type::sfEventType
    code::sfKeyCode
    alt::sfBool
    control::sfBool
    shift::sfBool
    system::sfBool
end

struct sfTextEvent
    type::sfEventType
    unicode::sfUint32
end

struct sfMouseMoveEvent
    type::sfEventType
    x::Cint
    y::Cint
end

@cenum(sfMouseButton,
    sfMouseLeft = 0,
    sfMouseRight = 1,
    sfMouseMiddle = 2,
    sfMouseXButton1 = 3,
    sfMouseXButton2 = 4,
    sfMouseButtonCount = 5,
)

struct sfMouseButtonEvent
    type::sfEventType
    button::sfMouseButton
    x::Cint
    y::Cint
end

@cenum(sfMouseWheel,
    sfMouseVerticalWheel = 0,
    sfMouseHorizontalWheel = 1,
)

struct sfMouseWheelScrollEvent
    type::sfEventType
    wheel::sfMouseWheel
    delta::Cfloat
    x::Cint
    y::Cint
end

@cenum(sfJoystickAxis,
    sfJoystickX = 0,
    sfJoystickY = 1,
    sfJoystickZ = 2,
    sfJoystickR = 3,
    sfJoystickU = 4,
    sfJoystickV = 5,
    sfJoystickPovX = 6,
    sfJoystickPovY = 7,
)

struct sfJoystickMoveEvent
    type::sfEventType
    joystickId::UInt32
    axis::sfJoystickAxis
    position::Cfloat
end

struct sfJoystickButtonEvent
    type::sfEventType
    joystickId::UInt32
    button::UInt32
end

struct sfJoystickConnectEvent
    type::sfEventType
    joystickId::UInt32
end

struct sfSizeEvent
    type::sfEventType
    width::UInt32
    height::UInt32
end

struct sfTouchEvent
    type::sfEventType
    finger::UInt32
    x::Cint
    y::Cint
end

@cenum(sfSensorType,
    sfSensorAccelerometer = 0,
    sfSensorGyroscope = 1,
    sfSensorMagnetometer = 2,
    sfSensorGravity = 3,
    sfSensorUserAcceleration = 4,
    sfSensorOrientation = 5,
    sfSensorCount = 6,
)

struct sfSensorEvent
    type::sfEventType
    sensorType::sfSensorType
    x::Cfloat
    y::Cfloat
    z::Cfloat
end

struct sfEvent
    type::sfEventType
    data::NTuple{20,UInt8}
end

@inline function unpack_union(::Type{T}, obj::S) where {T,S}
    ref = Ref{S}(obj)
    GC.@preserve ref begin
        ptr = Base.unsafe_convert(Ptr{Cvoid}, ref)
        target = unsafe_load(Ptr{T}(ptr))
    end
    return target
end

function Base.getproperty(obj::sfEvent, sym::Symbol)
    if sym === :type
        return getfield(obj, :type)
    elseif sym === :size
        return unpack_union(sfSizeEvent, obj)
    elseif sym === :key
        return unpack_union(sfKeyEvent, obj)
    elseif sym === :text
        return unpack_union(sfTextEvent, obj)
    elseif sym === :mouseMove
        return unpack_union(sfMouseMoveEvent, obj)
    elseif sym === :mouseButton
        return unpack_union(sfMouseButtonEvent, obj)
    elseif sym === :mouseWheel
        return unpack_union(sfMouseWheelEvent, obj)
    elseif sym === :mouseWheelScroll
        return unpack_union(sfMouseWheelScrollEvent, obj)
    elseif sym === :joystickMove
        return unpack_union(sfJoystickMoveEvent, obj)
    elseif sym === :joystickButton
        return unpack_union(sfJoystickButtonEvent, obj)
    elseif sym === :joystickConnect
        return unpack_union(sfJoystickConnectEvent, obj)
    elseif sym === :touch
        return unpack_union(sfTouchEvent, obj)
    elseif sym === :sensor
        return unpack_union(sfSensorEvent, obj)
    end
end

# const CSFML_WINDOW_API = CSFML_API_IMPORT

struct sfJoystickIdentification
    name::Cstring
    vendorId::UInt32
    productId::UInt32
end

const sfContext = Cvoid
const sfCursor = Cvoid
const sfWindow = Cvoid

struct sfVideoMode
    width::UInt32
    height::UInt32
    bitsPerPixel::UInt32
end

@cenum(sfWindowStyle,
    sfNone = 0,
    sfTitlebar = 1,
    sfResize = 2,
    sfClose = 4,
    sfFullscreen = 8,
    sfDefaultStyle = 7,
)
@cenum(sfContextAttribute,
    sfContextDefault = 0,
    sfContextCore = 1,
    sfContextDebug = 4,
)

struct sfContextSettings
    depthBits::UInt32
    stencilBits::UInt32
    antialiasingLevel::UInt32
    majorVersion::UInt32
    minorVersion::UInt32
    attributeFlags::sfUint32
    sRgbCapable::sfBool
end

const sfWindowHandle = Ptr{Cvoid}
