# Automatically generated using Clang.jl


# const CSFML_AUDIO_API = CSFML_API_IMPORT

struct sfTimeSpan
    offset::sfTime
    length::sfTime
end

const sfSoundRecorderStartCallback = Ptr{Cvoid}
const sfSoundRecorderProcessCallback = Ptr{Cvoid}
const sfSoundRecorderStopCallback = Ptr{Cvoid}

@cenum sfSoundStatus::UInt32 begin
    sfStopped = 0
    sfPaused = 1
    sfPlaying = 2
end


struct sfSoundStreamChunk
    samples::Ptr{sfInt16}
    sampleCount::UInt32
end

const sfSoundStreamGetDataCallback = Ptr{Cvoid}
const sfSoundStreamSeekCallback = Ptr{Cvoid}
const sfMusic = Cvoid
const sfSound = Cvoid
const sfSoundBuffer = Cvoid
const sfSoundBufferRecorder = Cvoid
const sfSoundRecorder = Cvoid
const sfSoundStream = Cvoid
