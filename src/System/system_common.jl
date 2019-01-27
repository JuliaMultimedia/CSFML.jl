# Automatically generated using Clang.jl


# const CSFML_SYSTEM_API = CSFML_API_IMPORT
const sfInputStreamReadFunc = Ptr{Cvoid}
const sfInputStreamSeekFunc = Ptr{Cvoid}
const sfInputStreamTellFunc = Ptr{Cvoid}
const sfInputStreamGetSizeFunc = Ptr{Cvoid}

struct sfInputStream
    read::sfInputStreamReadFunc
    seek::sfInputStreamSeekFunc
    tell::sfInputStreamTellFunc
    getSize::sfInputStreamGetSizeFunc
    userData::Ptr{Cvoid}
end

struct sfTime
    microseconds::sfInt64
end

const sfClock = Cvoid
const sfMutex = Cvoid
const sfThread = Cvoid

struct sfVector2i
    x::Cint
    y::Cint
end

struct sfVector2u
    x::UInt32
    y::UInt32
end

struct sfVector2f
    x::Cfloat
    y::Cfloat
end

struct sfVector3f
    x::Cfloat
    y::Cfloat
    z::Cfloat
end
