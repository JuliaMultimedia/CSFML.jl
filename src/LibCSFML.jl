module LibCSFML

using CSFML_jll
export CSFML_jll

using CEnum

const sfBool = Cint

const sfInt8 = Int8

const sfUint8 = Cuchar

const sfInt16 = Cshort

const sfUint16 = Cushort

const sfInt32 = Cint

const sfUint32 = Cuint

const sfInt64 = Clonglong

const sfUint64 = Culonglong

struct sfTime
    microseconds::sfInt64
end

function sfTime_asSeconds(time)
    ccall((:sfTime_asSeconds, libcimgui), Cfloat, (sfTime,), time)
end

function sfTime_asMilliseconds(time)
    ccall((:sfTime_asMilliseconds, libcimgui), sfInt32, (sfTime,), time)
end

function sfTime_asMicroseconds(time)
    ccall((:sfTime_asMicroseconds, libcimgui), sfInt64, (sfTime,), time)
end

function sfSeconds(amount)
    ccall((:sfSeconds, libcimgui), sfTime, (Cfloat,), amount)
end

function sfMilliseconds(amount)
    ccall((:sfMilliseconds, libcimgui), sfTime, (sfInt32,), amount)
end

function sfMicroseconds(amount)
    ccall((:sfMicroseconds, libcimgui), sfTime, (sfInt64,), amount)
end

mutable struct sfClock end

mutable struct sfMutex end

mutable struct sfThread end

function sfClock_create()
    ccall((:sfClock_create, libcimgui), Ptr{sfClock}, ())
end

function sfClock_copy(clock)
    ccall((:sfClock_copy, libcimgui), Ptr{sfClock}, (Ptr{sfClock},), clock)
end

function sfClock_destroy(clock)
    ccall((:sfClock_destroy, libcimgui), Cvoid, (Ptr{sfClock},), clock)
end

function sfClock_getElapsedTime(clock)
    ccall((:sfClock_getElapsedTime, libcimgui), sfTime, (Ptr{sfClock},), clock)
end

function sfClock_restart(clock)
    ccall((:sfClock_restart, libcimgui), sfTime, (Ptr{sfClock},), clock)
end

# C code:
# typedef sfInt64 ( * sfInputStreamReadFunc ) ( void * data , sfInt64 size , void * userData )
const sfInputStreamReadFunc = Ptr{Cvoid}

# C code:
# typedef sfInt64 ( * sfInputStreamSeekFunc ) ( sfInt64 position , void * userData )
const sfInputStreamSeekFunc = Ptr{Cvoid}

# C code:
# typedef sfInt64 ( * sfInputStreamTellFunc ) ( void * userData )
const sfInputStreamTellFunc = Ptr{Cvoid}

# C code:
# typedef sfInt64 ( * sfInputStreamGetSizeFunc ) ( void * userData )
const sfInputStreamGetSizeFunc = Ptr{Cvoid}

struct sfInputStream
    read::sfInputStreamReadFunc
    seek::sfInputStreamSeekFunc
    tell::sfInputStreamTellFunc
    getSize::sfInputStreamGetSizeFunc
    userData::Ptr{Cvoid}
end

function sfMutex_create()
    ccall((:sfMutex_create, libcimgui), Ptr{sfMutex}, ())
end

function sfMutex_destroy(mutex)
    ccall((:sfMutex_destroy, libcimgui), Cvoid, (Ptr{sfMutex},), mutex)
end

function sfMutex_lock(mutex)
    ccall((:sfMutex_lock, libcimgui), Cvoid, (Ptr{sfMutex},), mutex)
end

function sfMutex_unlock(mutex)
    ccall((:sfMutex_unlock, libcimgui), Cvoid, (Ptr{sfMutex},), mutex)
end

function sfSleep(duration)
    ccall((:sfSleep, libcimgui), Cvoid, (sfTime,), duration)
end

function sfThread_create(_function, userData)
    ccall((:sfThread_create, libcimgui), Ptr{sfThread}, (Ptr{Cvoid}, Ptr{Cvoid}), _function, userData)
end

function sfThread_destroy(thread)
    ccall((:sfThread_destroy, libcimgui), Cvoid, (Ptr{sfThread},), thread)
end

function sfThread_launch(thread)
    ccall((:sfThread_launch, libcimgui), Cvoid, (Ptr{sfThread},), thread)
end

function sfThread_wait(thread)
    ccall((:sfThread_wait, libcimgui), Cvoid, (Ptr{sfThread},), thread)
end

function sfThread_terminate(thread)
    ccall((:sfThread_terminate, libcimgui), Cvoid, (Ptr{sfThread},), thread)
end

struct sfVector2i
    x::Cint
    y::Cint
end

struct sfVector2u
    x::Cuint
    y::Cuint
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

function sfListener_setGlobalVolume(volume)
    ccall((:sfListener_setGlobalVolume, libcimgui), Cvoid, (Cfloat,), volume)
end

function sfListener_getGlobalVolume()
    ccall((:sfListener_getGlobalVolume, libcimgui), Cfloat, ())
end

function sfListener_setPosition(position)
    ccall((:sfListener_setPosition, libcimgui), Cvoid, (sfVector3f,), position)
end

# no prototype is found for this function at Listener.h:71:28, please use with caution
function sfListener_getPosition()
    ccall((:sfListener_getPosition, libcimgui), sfVector3f, ())
end

function sfListener_setDirection(direction)
    ccall((:sfListener_setDirection, libcimgui), Cvoid, (sfVector3f,), direction)
end

# no prototype is found for this function at Listener.h:94:28, please use with caution
function sfListener_getDirection()
    ccall((:sfListener_getDirection, libcimgui), sfVector3f, ())
end

function sfListener_setUpVector(upVector)
    ccall((:sfListener_setUpVector, libcimgui), Cvoid, (sfVector3f,), upVector)
end

# no prototype is found for this function at Listener.h:117:28, please use with caution
function sfListener_getUpVector()
    ccall((:sfListener_getUpVector, libcimgui), sfVector3f, ())
end

@cenum sfSoundStatus::UInt32 begin
    sfStopped = 0
    sfPaused = 1
    sfPlaying = 2
end

mutable struct sfMusic end

mutable struct sfSound end

mutable struct sfSoundBuffer end

mutable struct sfSoundBufferRecorder end

mutable struct sfSoundRecorder end

mutable struct sfSoundStream end

struct sfTimeSpan
    offset::sfTime
    length::sfTime
end

function sfMusic_createFromFile(filename)
    ccall((:sfMusic_createFromFile, libcimgui), Ptr{sfMusic}, (Ptr{Cchar},), filename)
end

function sfMusic_createFromMemory(data, sizeInBytes)
    ccall((:sfMusic_createFromMemory, libcimgui), Ptr{sfMusic}, (Ptr{Cvoid}, Csize_t), data, sizeInBytes)
end

function sfMusic_createFromStream(stream)
    ccall((:sfMusic_createFromStream, libcimgui), Ptr{sfMusic}, (Ptr{sfInputStream},), stream)
end

function sfMusic_destroy(music)
    ccall((:sfMusic_destroy, libcimgui), Cvoid, (Ptr{sfMusic},), music)
end

function sfMusic_setLoop(music, loop)
    ccall((:sfMusic_setLoop, libcimgui), Cvoid, (Ptr{sfMusic}, sfBool), music, loop)
end

function sfMusic_getLoop(music)
    ccall((:sfMusic_getLoop, libcimgui), sfBool, (Ptr{sfMusic},), music)
end

function sfMusic_getDuration(music)
    ccall((:sfMusic_getDuration, libcimgui), sfTime, (Ptr{sfMusic},), music)
end

function sfMusic_getLoopPoints(music)
    ccall((:sfMusic_getLoopPoints, libcimgui), sfTimeSpan, (Ptr{sfMusic},), music)
end

function sfMusic_setLoopPoints(music, timePoints)
    ccall((:sfMusic_setLoopPoints, libcimgui), Cvoid, (Ptr{sfMusic}, sfTimeSpan), music, timePoints)
end

function sfMusic_play(music)
    ccall((:sfMusic_play, libcimgui), Cvoid, (Ptr{sfMusic},), music)
end

function sfMusic_pause(music)
    ccall((:sfMusic_pause, libcimgui), Cvoid, (Ptr{sfMusic},), music)
end

function sfMusic_stop(music)
    ccall((:sfMusic_stop, libcimgui), Cvoid, (Ptr{sfMusic},), music)
end

function sfMusic_getChannelCount(music)
    ccall((:sfMusic_getChannelCount, libcimgui), Cuint, (Ptr{sfMusic},), music)
end

function sfMusic_getSampleRate(music)
    ccall((:sfMusic_getSampleRate, libcimgui), Cuint, (Ptr{sfMusic},), music)
end

function sfMusic_getStatus(music)
    ccall((:sfMusic_getStatus, libcimgui), sfSoundStatus, (Ptr{sfMusic},), music)
end

function sfMusic_getPlayingOffset(music)
    ccall((:sfMusic_getPlayingOffset, libcimgui), sfTime, (Ptr{sfMusic},), music)
end

function sfMusic_setPitch(music, pitch)
    ccall((:sfMusic_setPitch, libcimgui), Cvoid, (Ptr{sfMusic}, Cfloat), music, pitch)
end

function sfMusic_setVolume(music, volume)
    ccall((:sfMusic_setVolume, libcimgui), Cvoid, (Ptr{sfMusic}, Cfloat), music, volume)
end

function sfMusic_setPosition(music, position)
    ccall((:sfMusic_setPosition, libcimgui), Cvoid, (Ptr{sfMusic}, sfVector3f), music, position)
end

function sfMusic_setRelativeToListener(music, relative)
    ccall((:sfMusic_setRelativeToListener, libcimgui), Cvoid, (Ptr{sfMusic}, sfBool), music, relative)
end

function sfMusic_setMinDistance(music, distance)
    ccall((:sfMusic_setMinDistance, libcimgui), Cvoid, (Ptr{sfMusic}, Cfloat), music, distance)
end

function sfMusic_setAttenuation(music, attenuation)
    ccall((:sfMusic_setAttenuation, libcimgui), Cvoid, (Ptr{sfMusic}, Cfloat), music, attenuation)
end

function sfMusic_setPlayingOffset(music, timeOffset)
    ccall((:sfMusic_setPlayingOffset, libcimgui), Cvoid, (Ptr{sfMusic}, sfTime), music, timeOffset)
end

function sfMusic_getPitch(music)
    ccall((:sfMusic_getPitch, libcimgui), Cfloat, (Ptr{sfMusic},), music)
end

function sfMusic_getVolume(music)
    ccall((:sfMusic_getVolume, libcimgui), Cfloat, (Ptr{sfMusic},), music)
end

function sfMusic_getPosition(music)
    ccall((:sfMusic_getPosition, libcimgui), sfVector3f, (Ptr{sfMusic},), music)
end

function sfMusic_isRelativeToListener(music)
    ccall((:sfMusic_isRelativeToListener, libcimgui), sfBool, (Ptr{sfMusic},), music)
end

function sfMusic_getMinDistance(music)
    ccall((:sfMusic_getMinDistance, libcimgui), Cfloat, (Ptr{sfMusic},), music)
end

function sfMusic_getAttenuation(music)
    ccall((:sfMusic_getAttenuation, libcimgui), Cfloat, (Ptr{sfMusic},), music)
end

function sfSound_create()
    ccall((:sfSound_create, libcimgui), Ptr{sfSound}, ())
end

function sfSound_copy(sound)
    ccall((:sfSound_copy, libcimgui), Ptr{sfSound}, (Ptr{sfSound},), sound)
end

function sfSound_destroy(sound)
    ccall((:sfSound_destroy, libcimgui), Cvoid, (Ptr{sfSound},), sound)
end

function sfSound_play(sound)
    ccall((:sfSound_play, libcimgui), Cvoid, (Ptr{sfSound},), sound)
end

function sfSound_pause(sound)
    ccall((:sfSound_pause, libcimgui), Cvoid, (Ptr{sfSound},), sound)
end

function sfSound_stop(sound)
    ccall((:sfSound_stop, libcimgui), Cvoid, (Ptr{sfSound},), sound)
end

function sfSound_setBuffer(sound, buffer)
    ccall((:sfSound_setBuffer, libcimgui), Cvoid, (Ptr{sfSound}, Ptr{sfSoundBuffer}), sound, buffer)
end

function sfSound_getBuffer(sound)
    ccall((:sfSound_getBuffer, libcimgui), Ptr{sfSoundBuffer}, (Ptr{sfSound},), sound)
end

function sfSound_setLoop(sound, loop)
    ccall((:sfSound_setLoop, libcimgui), Cvoid, (Ptr{sfSound}, sfBool), sound, loop)
end

function sfSound_getLoop(sound)
    ccall((:sfSound_getLoop, libcimgui), sfBool, (Ptr{sfSound},), sound)
end

function sfSound_getStatus(sound)
    ccall((:sfSound_getStatus, libcimgui), sfSoundStatus, (Ptr{sfSound},), sound)
end

function sfSound_setPitch(sound, pitch)
    ccall((:sfSound_setPitch, libcimgui), Cvoid, (Ptr{sfSound}, Cfloat), sound, pitch)
end

function sfSound_setVolume(sound, volume)
    ccall((:sfSound_setVolume, libcimgui), Cvoid, (Ptr{sfSound}, Cfloat), sound, volume)
end

function sfSound_setPosition(sound, position)
    ccall((:sfSound_setPosition, libcimgui), Cvoid, (Ptr{sfSound}, sfVector3f), sound, position)
end

function sfSound_setRelativeToListener(sound, relative)
    ccall((:sfSound_setRelativeToListener, libcimgui), Cvoid, (Ptr{sfSound}, sfBool), sound, relative)
end

function sfSound_setMinDistance(sound, distance)
    ccall((:sfSound_setMinDistance, libcimgui), Cvoid, (Ptr{sfSound}, Cfloat), sound, distance)
end

function sfSound_setAttenuation(sound, attenuation)
    ccall((:sfSound_setAttenuation, libcimgui), Cvoid, (Ptr{sfSound}, Cfloat), sound, attenuation)
end

function sfSound_setPlayingOffset(sound, timeOffset)
    ccall((:sfSound_setPlayingOffset, libcimgui), Cvoid, (Ptr{sfSound}, sfTime), sound, timeOffset)
end

function sfSound_getPitch(sound)
    ccall((:sfSound_getPitch, libcimgui), Cfloat, (Ptr{sfSound},), sound)
end

function sfSound_getVolume(sound)
    ccall((:sfSound_getVolume, libcimgui), Cfloat, (Ptr{sfSound},), sound)
end

function sfSound_getPosition(sound)
    ccall((:sfSound_getPosition, libcimgui), sfVector3f, (Ptr{sfSound},), sound)
end

function sfSound_isRelativeToListener(sound)
    ccall((:sfSound_isRelativeToListener, libcimgui), sfBool, (Ptr{sfSound},), sound)
end

function sfSound_getMinDistance(sound)
    ccall((:sfSound_getMinDistance, libcimgui), Cfloat, (Ptr{sfSound},), sound)
end

function sfSound_getAttenuation(sound)
    ccall((:sfSound_getAttenuation, libcimgui), Cfloat, (Ptr{sfSound},), sound)
end

function sfSound_getPlayingOffset(sound)
    ccall((:sfSound_getPlayingOffset, libcimgui), sfTime, (Ptr{sfSound},), sound)
end

function sfSoundBuffer_createFromFile(filename)
    ccall((:sfSoundBuffer_createFromFile, libcimgui), Ptr{sfSoundBuffer}, (Ptr{Cchar},), filename)
end

function sfSoundBuffer_createFromMemory(data, sizeInBytes)
    ccall((:sfSoundBuffer_createFromMemory, libcimgui), Ptr{sfSoundBuffer}, (Ptr{Cvoid}, Csize_t), data, sizeInBytes)
end

function sfSoundBuffer_createFromStream(stream)
    ccall((:sfSoundBuffer_createFromStream, libcimgui), Ptr{sfSoundBuffer}, (Ptr{sfInputStream},), stream)
end

function sfSoundBuffer_createFromSamples(samples, sampleCount, channelCount, sampleRate)
    ccall((:sfSoundBuffer_createFromSamples, libcimgui), Ptr{sfSoundBuffer}, (Ptr{sfInt16}, sfUint64, Cuint, Cuint), samples, sampleCount, channelCount, sampleRate)
end

function sfSoundBuffer_copy(soundBuffer)
    ccall((:sfSoundBuffer_copy, libcimgui), Ptr{sfSoundBuffer}, (Ptr{sfSoundBuffer},), soundBuffer)
end

function sfSoundBuffer_destroy(soundBuffer)
    ccall((:sfSoundBuffer_destroy, libcimgui), Cvoid, (Ptr{sfSoundBuffer},), soundBuffer)
end

function sfSoundBuffer_saveToFile(soundBuffer, filename)
    ccall((:sfSoundBuffer_saveToFile, libcimgui), sfBool, (Ptr{sfSoundBuffer}, Ptr{Cchar}), soundBuffer, filename)
end

function sfSoundBuffer_getSamples(soundBuffer)
    ccall((:sfSoundBuffer_getSamples, libcimgui), Ptr{sfInt16}, (Ptr{sfSoundBuffer},), soundBuffer)
end

function sfSoundBuffer_getSampleCount(soundBuffer)
    ccall((:sfSoundBuffer_getSampleCount, libcimgui), sfUint64, (Ptr{sfSoundBuffer},), soundBuffer)
end

function sfSoundBuffer_getSampleRate(soundBuffer)
    ccall((:sfSoundBuffer_getSampleRate, libcimgui), Cuint, (Ptr{sfSoundBuffer},), soundBuffer)
end

function sfSoundBuffer_getChannelCount(soundBuffer)
    ccall((:sfSoundBuffer_getChannelCount, libcimgui), Cuint, (Ptr{sfSoundBuffer},), soundBuffer)
end

function sfSoundBuffer_getDuration(soundBuffer)
    ccall((:sfSoundBuffer_getDuration, libcimgui), sfTime, (Ptr{sfSoundBuffer},), soundBuffer)
end

function sfSoundBufferRecorder_create()
    ccall((:sfSoundBufferRecorder_create, libcimgui), Ptr{sfSoundBufferRecorder}, ())
end

function sfSoundBufferRecorder_destroy(soundBufferRecorder)
    ccall((:sfSoundBufferRecorder_destroy, libcimgui), Cvoid, (Ptr{sfSoundBufferRecorder},), soundBufferRecorder)
end

function sfSoundBufferRecorder_start(soundBufferRecorder, sampleRate)
    ccall((:sfSoundBufferRecorder_start, libcimgui), sfBool, (Ptr{sfSoundBufferRecorder}, Cuint), soundBufferRecorder, sampleRate)
end

function sfSoundBufferRecorder_stop(soundBufferRecorder)
    ccall((:sfSoundBufferRecorder_stop, libcimgui), Cvoid, (Ptr{sfSoundBufferRecorder},), soundBufferRecorder)
end

function sfSoundBufferRecorder_getSampleRate(soundBufferRecorder)
    ccall((:sfSoundBufferRecorder_getSampleRate, libcimgui), Cuint, (Ptr{sfSoundBufferRecorder},), soundBufferRecorder)
end

function sfSoundBufferRecorder_getBuffer(soundBufferRecorder)
    ccall((:sfSoundBufferRecorder_getBuffer, libcimgui), Ptr{sfSoundBuffer}, (Ptr{sfSoundBufferRecorder},), soundBufferRecorder)
end

function sfSoundBufferRecorder_setDevice(soundBufferRecorder, name)
    ccall((:sfSoundBufferRecorder_setDevice, libcimgui), sfBool, (Ptr{sfSoundBufferRecorder}, Ptr{Cchar}), soundBufferRecorder, name)
end

function sfSoundBufferRecorder_getDevice(soundBufferRecorder)
    ccall((:sfSoundBufferRecorder_getDevice, libcimgui), Ptr{Cchar}, (Ptr{sfSoundBufferRecorder},), soundBufferRecorder)
end

# C code:
# typedef sfBool ( * sfSoundRecorderStartCallback ) ( void * )
const sfSoundRecorderStartCallback = Ptr{Cvoid}

# C code:
# typedef sfBool ( * sfSoundRecorderProcessCallback ) ( const sfInt16 * , size_t , void * )
const sfSoundRecorderProcessCallback = Ptr{Cvoid}

# C code:
# typedef void ( * sfSoundRecorderStopCallback ) ( void * )
const sfSoundRecorderStopCallback = Ptr{Cvoid}

function sfSoundRecorder_create(onStart, onProcess, onStop, userData)
    ccall((:sfSoundRecorder_create, libcimgui), Ptr{sfSoundRecorder}, (sfSoundRecorderStartCallback, sfSoundRecorderProcessCallback, sfSoundRecorderStopCallback, Ptr{Cvoid}), onStart, onProcess, onStop, userData)
end

function sfSoundRecorder_destroy(soundRecorder)
    ccall((:sfSoundRecorder_destroy, libcimgui), Cvoid, (Ptr{sfSoundRecorder},), soundRecorder)
end

function sfSoundRecorder_start(soundRecorder, sampleRate)
    ccall((:sfSoundRecorder_start, libcimgui), sfBool, (Ptr{sfSoundRecorder}, Cuint), soundRecorder, sampleRate)
end

function sfSoundRecorder_stop(soundRecorder)
    ccall((:sfSoundRecorder_stop, libcimgui), Cvoid, (Ptr{sfSoundRecorder},), soundRecorder)
end

function sfSoundRecorder_getSampleRate(soundRecorder)
    ccall((:sfSoundRecorder_getSampleRate, libcimgui), Cuint, (Ptr{sfSoundRecorder},), soundRecorder)
end

function sfSoundRecorder_isAvailable()
    ccall((:sfSoundRecorder_isAvailable, libcimgui), sfBool, ())
end

function sfSoundRecorder_setProcessingInterval(soundRecorder, interval)
    ccall((:sfSoundRecorder_setProcessingInterval, libcimgui), Cvoid, (Ptr{sfSoundRecorder}, sfTime), soundRecorder, interval)
end

function sfSoundRecorder_getAvailableDevices(count)
    ccall((:sfSoundRecorder_getAvailableDevices, libcimgui), Ptr{Ptr{Cchar}}, (Ptr{Csize_t},), count)
end

# no prototype is found for this function at SoundRecorder.h:160:29, please use with caution
function sfSoundRecorder_getDefaultDevice()
    ccall((:sfSoundRecorder_getDefaultDevice, libcimgui), Ptr{Cchar}, ())
end

function sfSoundRecorder_setDevice(soundRecorder, name)
    ccall((:sfSoundRecorder_setDevice, libcimgui), sfBool, (Ptr{sfSoundRecorder}, Ptr{Cchar}), soundRecorder, name)
end

function sfSoundRecorder_getDevice(soundRecorder)
    ccall((:sfSoundRecorder_getDevice, libcimgui), Ptr{Cchar}, (Ptr{sfSoundRecorder},), soundRecorder)
end

function sfSoundRecorder_setChannelCount(soundRecorder, channelCount)
    ccall((:sfSoundRecorder_setChannelCount, libcimgui), Cvoid, (Ptr{sfSoundRecorder}, Cuint), soundRecorder, channelCount)
end

function sfSoundRecorder_getChannelCount(soundRecorder)
    ccall((:sfSoundRecorder_getChannelCount, libcimgui), Cuint, (Ptr{sfSoundRecorder},), soundRecorder)
end

struct sfSoundStreamChunk
    samples::Ptr{sfInt16}
    sampleCount::Cuint
end

# C code:
# typedef sfBool ( * sfSoundStreamGetDataCallback ) ( sfSoundStreamChunk * , void * )
const sfSoundStreamGetDataCallback = Ptr{Cvoid}

# C code:
# typedef void ( * sfSoundStreamSeekCallback ) ( sfTime , void * )
const sfSoundStreamSeekCallback = Ptr{Cvoid}

function sfSoundStream_create(onGetData, onSeek, channelCount, sampleRate, userData)
    ccall((:sfSoundStream_create, libcimgui), Ptr{sfSoundStream}, (sfSoundStreamGetDataCallback, sfSoundStreamSeekCallback, Cuint, Cuint, Ptr{Cvoid}), onGetData, onSeek, channelCount, sampleRate, userData)
end

function sfSoundStream_destroy(soundStream)
    ccall((:sfSoundStream_destroy, libcimgui), Cvoid, (Ptr{sfSoundStream},), soundStream)
end

function sfSoundStream_play(soundStream)
    ccall((:sfSoundStream_play, libcimgui), Cvoid, (Ptr{sfSoundStream},), soundStream)
end

function sfSoundStream_pause(soundStream)
    ccall((:sfSoundStream_pause, libcimgui), Cvoid, (Ptr{sfSoundStream},), soundStream)
end

function sfSoundStream_stop(soundStream)
    ccall((:sfSoundStream_stop, libcimgui), Cvoid, (Ptr{sfSoundStream},), soundStream)
end

function sfSoundStream_getStatus(soundStream)
    ccall((:sfSoundStream_getStatus, libcimgui), sfSoundStatus, (Ptr{sfSoundStream},), soundStream)
end

function sfSoundStream_getChannelCount(soundStream)
    ccall((:sfSoundStream_getChannelCount, libcimgui), Cuint, (Ptr{sfSoundStream},), soundStream)
end

function sfSoundStream_getSampleRate(soundStream)
    ccall((:sfSoundStream_getSampleRate, libcimgui), Cuint, (Ptr{sfSoundStream},), soundStream)
end

function sfSoundStream_setPitch(soundStream, pitch)
    ccall((:sfSoundStream_setPitch, libcimgui), Cvoid, (Ptr{sfSoundStream}, Cfloat), soundStream, pitch)
end

function sfSoundStream_setVolume(soundStream, volume)
    ccall((:sfSoundStream_setVolume, libcimgui), Cvoid, (Ptr{sfSoundStream}, Cfloat), soundStream, volume)
end

function sfSoundStream_setPosition(soundStream, position)
    ccall((:sfSoundStream_setPosition, libcimgui), Cvoid, (Ptr{sfSoundStream}, sfVector3f), soundStream, position)
end

function sfSoundStream_setRelativeToListener(soundStream, relative)
    ccall((:sfSoundStream_setRelativeToListener, libcimgui), Cvoid, (Ptr{sfSoundStream}, sfBool), soundStream, relative)
end

function sfSoundStream_setMinDistance(soundStream, distance)
    ccall((:sfSoundStream_setMinDistance, libcimgui), Cvoid, (Ptr{sfSoundStream}, Cfloat), soundStream, distance)
end

function sfSoundStream_setAttenuation(soundStream, attenuation)
    ccall((:sfSoundStream_setAttenuation, libcimgui), Cvoid, (Ptr{sfSoundStream}, Cfloat), soundStream, attenuation)
end

function sfSoundStream_setPlayingOffset(soundStream, timeOffset)
    ccall((:sfSoundStream_setPlayingOffset, libcimgui), Cvoid, (Ptr{sfSoundStream}, sfTime), soundStream, timeOffset)
end

function sfSoundStream_setLoop(soundStream, loop)
    ccall((:sfSoundStream_setLoop, libcimgui), Cvoid, (Ptr{sfSoundStream}, sfBool), soundStream, loop)
end

function sfSoundStream_getPitch(soundStream)
    ccall((:sfSoundStream_getPitch, libcimgui), Cfloat, (Ptr{sfSoundStream},), soundStream)
end

function sfSoundStream_getVolume(soundStream)
    ccall((:sfSoundStream_getVolume, libcimgui), Cfloat, (Ptr{sfSoundStream},), soundStream)
end

function sfSoundStream_getPosition(soundStream)
    ccall((:sfSoundStream_getPosition, libcimgui), sfVector3f, (Ptr{sfSoundStream},), soundStream)
end

function sfSoundStream_isRelativeToListener(soundStream)
    ccall((:sfSoundStream_isRelativeToListener, libcimgui), sfBool, (Ptr{sfSoundStream},), soundStream)
end

function sfSoundStream_getMinDistance(soundStream)
    ccall((:sfSoundStream_getMinDistance, libcimgui), Cfloat, (Ptr{sfSoundStream},), soundStream)
end

function sfSoundStream_getAttenuation(soundStream)
    ccall((:sfSoundStream_getAttenuation, libcimgui), Cfloat, (Ptr{sfSoundStream},), soundStream)
end

function sfSoundStream_getLoop(soundStream)
    ccall((:sfSoundStream_getLoop, libcimgui), sfBool, (Ptr{sfSoundStream},), soundStream)
end

function sfSoundStream_getPlayingOffset(soundStream)
    ccall((:sfSoundStream_getPlayingOffset, libcimgui), sfTime, (Ptr{sfSoundStream},), soundStream)
end

mutable struct sfContext end

mutable struct sfCursor end

mutable struct sfWindow end

# no prototype is found for this function at Clipboard.h:45:30, please use with caution
function sfClipboard_getString()
    ccall((:sfClipboard_getString, libcimgui), Ptr{Cchar}, ())
end

# no prototype is found for this function at Clipboard.h:58:34, please use with caution
function sfClipboard_getUnicodeString()
    ccall((:sfClipboard_getUnicodeString, libcimgui), Ptr{sfUint32}, ())
end

function sfClipboard_setString(text)
    ccall((:sfClipboard_setString, libcimgui), Cvoid, (Ptr{Cchar},), text)
end

function sfClipboard_setUnicodeString(text)
    ccall((:sfClipboard_setUnicodeString, libcimgui), Cvoid, (Ptr{sfUint32},), text)
end

struct sfJoystickIdentification
    name::Ptr{Cchar}
    vendorId::Cuint
    productId::Cuint
end

@cenum var"##Ctag#267"::UInt32 begin
    sfJoystickCount = 8
    sfJoystickButtonCount = 32
    sfJoystickAxisCount = 8
end

@cenum sfJoystickAxis::UInt32 begin
    sfJoystickX = 0
    sfJoystickY = 1
    sfJoystickZ = 2
    sfJoystickR = 3
    sfJoystickU = 4
    sfJoystickV = 5
    sfJoystickPovX = 6
    sfJoystickPovY = 7
end

function sfJoystick_isConnected(joystick)
    ccall((:sfJoystick_isConnected, libcimgui), sfBool, (Cuint,), joystick)
end

function sfJoystick_getButtonCount(joystick)
    ccall((:sfJoystick_getButtonCount, libcimgui), Cuint, (Cuint,), joystick)
end

function sfJoystick_hasAxis(joystick, axis)
    ccall((:sfJoystick_hasAxis, libcimgui), sfBool, (Cuint, sfJoystickAxis), joystick, axis)
end

function sfJoystick_isButtonPressed(joystick, button)
    ccall((:sfJoystick_isButtonPressed, libcimgui), sfBool, (Cuint, Cuint), joystick, button)
end

function sfJoystick_getAxisPosition(joystick, axis)
    ccall((:sfJoystick_getAxisPosition, libcimgui), Cfloat, (Cuint, sfJoystickAxis), joystick, axis)
end

function sfJoystick_getIdentification(joystick)
    ccall((:sfJoystick_getIdentification, libcimgui), sfJoystickIdentification, (Cuint,), joystick)
end

function sfJoystick_update()
    ccall((:sfJoystick_update, libcimgui), Cvoid, ())
end

@cenum sfKeyCode::Int32 begin
    sfKeyUnknown = -1
    sfKeyA = 0
    sfKeyB = 1
    sfKeyC = 2
    sfKeyD = 3
    sfKeyE = 4
    sfKeyF = 5
    sfKeyG = 6
    sfKeyH = 7
    sfKeyI = 8
    sfKeyJ = 9
    sfKeyK = 10
    sfKeyL = 11
    sfKeyM = 12
    sfKeyN = 13
    sfKeyO = 14
    sfKeyP = 15
    sfKeyQ = 16
    sfKeyR = 17
    sfKeyS = 18
    sfKeyT = 19
    sfKeyU = 20
    sfKeyV = 21
    sfKeyW = 22
    sfKeyX = 23
    sfKeyY = 24
    sfKeyZ = 25
    sfKeyNum0 = 26
    sfKeyNum1 = 27
    sfKeyNum2 = 28
    sfKeyNum3 = 29
    sfKeyNum4 = 30
    sfKeyNum5 = 31
    sfKeyNum6 = 32
    sfKeyNum7 = 33
    sfKeyNum8 = 34
    sfKeyNum9 = 35
    sfKeyEscape = 36
    sfKeyLControl = 37
    sfKeyLShift = 38
    sfKeyLAlt = 39
    sfKeyLSystem = 40
    sfKeyRControl = 41
    sfKeyRShift = 42
    sfKeyRAlt = 43
    sfKeyRSystem = 44
    sfKeyMenu = 45
    sfKeyLBracket = 46
    sfKeyRBracket = 47
    sfKeySemicolon = 48
    sfKeyComma = 49
    sfKeyPeriod = 50
    sfKeyQuote = 51
    sfKeySlash = 52
    sfKeyBackslash = 53
    sfKeyTilde = 54
    sfKeyEqual = 55
    sfKeyHyphen = 56
    sfKeySpace = 57
    sfKeyEnter = 58
    sfKeyBackspace = 59
    sfKeyTab = 60
    sfKeyPageUp = 61
    sfKeyPageDown = 62
    sfKeyEnd = 63
    sfKeyHome = 64
    sfKeyInsert = 65
    sfKeyDelete = 66
    sfKeyAdd = 67
    sfKeySubtract = 68
    sfKeyMultiply = 69
    sfKeyDivide = 70
    sfKeyLeft = 71
    sfKeyRight = 72
    sfKeyUp = 73
    sfKeyDown = 74
    sfKeyNumpad0 = 75
    sfKeyNumpad1 = 76
    sfKeyNumpad2 = 77
    sfKeyNumpad3 = 78
    sfKeyNumpad4 = 79
    sfKeyNumpad5 = 80
    sfKeyNumpad6 = 81
    sfKeyNumpad7 = 82
    sfKeyNumpad8 = 83
    sfKeyNumpad9 = 84
    sfKeyF1 = 85
    sfKeyF2 = 86
    sfKeyF3 = 87
    sfKeyF4 = 88
    sfKeyF5 = 89
    sfKeyF6 = 90
    sfKeyF7 = 91
    sfKeyF8 = 92
    sfKeyF9 = 93
    sfKeyF10 = 94
    sfKeyF11 = 95
    sfKeyF12 = 96
    sfKeyF13 = 97
    sfKeyF14 = 98
    sfKeyF15 = 99
    sfKeyPause = 100
    sfKeyCount = 101
    sfKeyDash = 56
    sfKeyBack = 59
    sfKeyBackSlash = 53
    sfKeySemiColon = 48
    sfKeyReturn = 58
end

function sfKeyboard_isKeyPressed(key)
    ccall((:sfKeyboard_isKeyPressed, libcimgui), sfBool, (sfKeyCode,), key)
end

function sfKeyboard_setVirtualKeyboardVisible(visible)
    ccall((:sfKeyboard_setVirtualKeyboardVisible, libcimgui), Cvoid, (sfBool,), visible)
end

@cenum sfMouseButton::UInt32 begin
    sfMouseLeft = 0
    sfMouseRight = 1
    sfMouseMiddle = 2
    sfMouseXButton1 = 3
    sfMouseXButton2 = 4
    sfMouseButtonCount = 5
end

@cenum sfMouseWheel::UInt32 begin
    sfMouseVerticalWheel = 0
    sfMouseHorizontalWheel = 1
end

function sfMouse_isButtonPressed(button)
    ccall((:sfMouse_isButtonPressed, libcimgui), sfBool, (sfMouseButton,), button)
end

function sfMouse_getPosition(relativeTo)
    ccall((:sfMouse_getPosition, libcimgui), sfVector2i, (Ptr{sfWindow},), relativeTo)
end

function sfMouse_setPosition(position, relativeTo)
    ccall((:sfMouse_setPosition, libcimgui), Cvoid, (sfVector2i, Ptr{sfWindow}), position, relativeTo)
end

@cenum sfSensorType::UInt32 begin
    sfSensorAccelerometer = 0
    sfSensorGyroscope = 1
    sfSensorMagnetometer = 2
    sfSensorGravity = 3
    sfSensorUserAcceleration = 4
    sfSensorOrientation = 5
    sfSensorCount = 6
end

function sfSensor_isAvailable(sensor)
    ccall((:sfSensor_isAvailable, libcimgui), sfBool, (sfSensorType,), sensor)
end

function sfSensor_setEnabled(sensor, enabled)
    ccall((:sfSensor_setEnabled, libcimgui), Cvoid, (sfSensorType, sfBool), sensor, enabled)
end

function sfSensor_getValue(sensor)
    ccall((:sfSensor_getValue, libcimgui), sfVector3f, (sfSensorType,), sensor)
end

@cenum sfEventType::UInt32 begin
    sfEvtClosed = 0
    sfEvtResized = 1
    sfEvtLostFocus = 2
    sfEvtGainedFocus = 3
    sfEvtTextEntered = 4
    sfEvtKeyPressed = 5
    sfEvtKeyReleased = 6
    sfEvtMouseWheelMoved = 7
    sfEvtMouseWheelScrolled = 8
    sfEvtMouseButtonPressed = 9
    sfEvtMouseButtonReleased = 10
    sfEvtMouseMoved = 11
    sfEvtMouseEntered = 12
    sfEvtMouseLeft = 13
    sfEvtJoystickButtonPressed = 14
    sfEvtJoystickButtonReleased = 15
    sfEvtJoystickMoved = 16
    sfEvtJoystickConnected = 17
    sfEvtJoystickDisconnected = 18
    sfEvtTouchBegan = 19
    sfEvtTouchMoved = 20
    sfEvtTouchEnded = 21
    sfEvtSensorChanged = 22
    sfEvtCount = 23
end

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

struct sfMouseButtonEvent
    type::sfEventType
    button::sfMouseButton
    x::Cint
    y::Cint
end

struct sfMouseWheelEvent
    type::sfEventType
    delta::Cint
    x::Cint
    y::Cint
end

struct sfMouseWheelScrollEvent
    type::sfEventType
    wheel::sfMouseWheel
    delta::Cfloat
    x::Cint
    y::Cint
end

struct sfJoystickMoveEvent
    type::sfEventType
    joystickId::Cuint
    axis::sfJoystickAxis
    position::Cfloat
end

struct sfJoystickButtonEvent
    type::sfEventType
    joystickId::Cuint
    button::Cuint
end

struct sfJoystickConnectEvent
    type::sfEventType
    joystickId::Cuint
end

struct sfSizeEvent
    type::sfEventType
    width::Cuint
    height::Cuint
end

struct sfTouchEvent
    type::sfEventType
    finger::Cuint
    x::Cint
    y::Cint
end

struct sfSensorEvent
    type::sfEventType
    sensorType::sfSensorType
    x::Cfloat
    y::Cfloat
    z::Cfloat
end

struct sfEvent
    data::NTuple{24, UInt8}
end

struct sfVideoMode
    width::Cuint
    height::Cuint
    bitsPerPixel::Cuint
end

function sfVideoMode_getDesktopMode()
    ccall((:sfVideoMode_getDesktopMode, libcimgui), sfVideoMode, ())
end

function sfVideoMode_getFullscreenModes(count)
    ccall((:sfVideoMode_getFullscreenModes, libcimgui), Ptr{sfVideoMode}, (Ptr{Csize_t},), count)
end

function sfVideoMode_isValid(mode)
    ccall((:sfVideoMode_isValid, libcimgui), sfBool, (sfVideoMode,), mode)
end

const sfWindowHandle = Ptr{Cvoid}

@cenum sfWindowStyle::UInt32 begin
    sfNone = 0
    sfTitlebar = 1
    sfResize = 2
    sfClose = 4
    sfFullscreen = 8
    sfDefaultStyle = 7
end

@cenum sfContextAttribute::UInt32 begin
    sfContextDefault = 0
    sfContextCore = 1
    sfContextDebug = 4
end

struct sfContextSettings
    depthBits::Cuint
    stencilBits::Cuint
    antialiasingLevel::Cuint
    majorVersion::Cuint
    minorVersion::Cuint
    attributeFlags::sfUint32
    sRgbCapable::sfBool
end

function sfWindow_create(mode, title, style, settings)
    ccall((:sfWindow_create, libcimgui), Ptr{sfWindow}, (sfVideoMode, Ptr{Cchar}, sfUint32, Ptr{sfContextSettings}), mode, title, style, settings)
end

function sfWindow_createUnicode(mode, title, style, settings)
    ccall((:sfWindow_createUnicode, libcimgui), Ptr{sfWindow}, (sfVideoMode, Ptr{sfUint32}, sfUint32, Ptr{sfContextSettings}), mode, title, style, settings)
end

function sfWindow_createFromHandle(handle, settings)
    ccall((:sfWindow_createFromHandle, libcimgui), Ptr{sfWindow}, (sfWindowHandle, Ptr{sfContextSettings}), handle, settings)
end

function sfWindow_destroy(window)
    ccall((:sfWindow_destroy, libcimgui), Cvoid, (Ptr{sfWindow},), window)
end

function sfWindow_close(window)
    ccall((:sfWindow_close, libcimgui), Cvoid, (Ptr{sfWindow},), window)
end

function sfWindow_isOpen(window)
    ccall((:sfWindow_isOpen, libcimgui), sfBool, (Ptr{sfWindow},), window)
end

function sfWindow_getSettings(window)
    ccall((:sfWindow_getSettings, libcimgui), sfContextSettings, (Ptr{sfWindow},), window)
end

function sfWindow_pollEvent(window, event)
    ccall((:sfWindow_pollEvent, libcimgui), sfBool, (Ptr{sfWindow}, Ptr{sfEvent}), window, event)
end

function sfWindow_waitEvent(window, event)
    ccall((:sfWindow_waitEvent, libcimgui), sfBool, (Ptr{sfWindow}, Ptr{sfEvent}), window, event)
end

function sfWindow_getPosition(window)
    ccall((:sfWindow_getPosition, libcimgui), sfVector2i, (Ptr{sfWindow},), window)
end

function sfWindow_setPosition(window, position)
    ccall((:sfWindow_setPosition, libcimgui), Cvoid, (Ptr{sfWindow}, sfVector2i), window, position)
end

function sfWindow_getSize(window)
    ccall((:sfWindow_getSize, libcimgui), sfVector2u, (Ptr{sfWindow},), window)
end

function sfWindow_setSize(window, size)
    ccall((:sfWindow_setSize, libcimgui), Cvoid, (Ptr{sfWindow}, sfVector2u), window, size)
end

function sfWindow_setTitle(window, title)
    ccall((:sfWindow_setTitle, libcimgui), Cvoid, (Ptr{sfWindow}, Ptr{Cchar}), window, title)
end

function sfWindow_setUnicodeTitle(window, title)
    ccall((:sfWindow_setUnicodeTitle, libcimgui), Cvoid, (Ptr{sfWindow}, Ptr{sfUint32}), window, title)
end

function sfWindow_setIcon(window, width, height, pixels)
    ccall((:sfWindow_setIcon, libcimgui), Cvoid, (Ptr{sfWindow}, Cuint, Cuint, Ptr{sfUint8}), window, width, height, pixels)
end

function sfWindow_setVisible(window, visible)
    ccall((:sfWindow_setVisible, libcimgui), Cvoid, (Ptr{sfWindow}, sfBool), window, visible)
end

function sfWindow_setVerticalSyncEnabled(window, enabled)
    ccall((:sfWindow_setVerticalSyncEnabled, libcimgui), Cvoid, (Ptr{sfWindow}, sfBool), window, enabled)
end

function sfWindow_setMouseCursorVisible(window, visible)
    ccall((:sfWindow_setMouseCursorVisible, libcimgui), Cvoid, (Ptr{sfWindow}, sfBool), window, visible)
end

function sfWindow_setMouseCursorGrabbed(window, grabbed)
    ccall((:sfWindow_setMouseCursorGrabbed, libcimgui), Cvoid, (Ptr{sfWindow}, sfBool), window, grabbed)
end

function sfWindow_setMouseCursor(window, cursor)
    ccall((:sfWindow_setMouseCursor, libcimgui), Cvoid, (Ptr{sfWindow}, Ptr{sfCursor}), window, cursor)
end

function sfWindow_setKeyRepeatEnabled(window, enabled)
    ccall((:sfWindow_setKeyRepeatEnabled, libcimgui), Cvoid, (Ptr{sfWindow}, sfBool), window, enabled)
end

function sfWindow_setFramerateLimit(window, limit)
    ccall((:sfWindow_setFramerateLimit, libcimgui), Cvoid, (Ptr{sfWindow}, Cuint), window, limit)
end

function sfWindow_setJoystickThreshold(window, threshold)
    ccall((:sfWindow_setJoystickThreshold, libcimgui), Cvoid, (Ptr{sfWindow}, Cfloat), window, threshold)
end

function sfWindow_setActive(window, active)
    ccall((:sfWindow_setActive, libcimgui), sfBool, (Ptr{sfWindow}, sfBool), window, active)
end

function sfWindow_requestFocus(window)
    ccall((:sfWindow_requestFocus, libcimgui), Cvoid, (Ptr{sfWindow},), window)
end

function sfWindow_hasFocus(window)
    ccall((:sfWindow_hasFocus, libcimgui), sfBool, (Ptr{sfWindow},), window)
end

function sfWindow_display(window)
    ccall((:sfWindow_display, libcimgui), Cvoid, (Ptr{sfWindow},), window)
end

function sfWindow_getSystemHandle(window)
    ccall((:sfWindow_getSystemHandle, libcimgui), sfWindowHandle, (Ptr{sfWindow},), window)
end

function sfContext_create()
    ccall((:sfContext_create, libcimgui), Ptr{sfContext}, ())
end

function sfContext_destroy(context)
    ccall((:sfContext_destroy, libcimgui), Cvoid, (Ptr{sfContext},), context)
end

function sfContext_setActive(context, active)
    ccall((:sfContext_setActive, libcimgui), sfBool, (Ptr{sfContext}, sfBool), context, active)
end

function sfContext_getSettings(context)
    ccall((:sfContext_getSettings, libcimgui), sfContextSettings, (Ptr{sfContext},), context)
end

# no prototype is found for this function at Context.h:85:27, please use with caution
function sfContext_getActiveContextId()
    ccall((:sfContext_getActiveContextId, libcimgui), sfUint64, ())
end

@cenum sfCursorType::UInt32 begin
    sfCursorArrow = 0
    sfCursorArrowWait = 1
    sfCursorWait = 2
    sfCursorText = 3
    sfCursorHand = 4
    sfCursorSizeHorizontal = 5
    sfCursorSizeVertical = 6
    sfCursorSizeTopLeftBottomRight = 7
    sfCursorSizeBottomLeftTopRight = 8
    sfCursorSizeAll = 9
    sfCursorCross = 10
    sfCursorHelp = 11
    sfCursorNotAllowed = 12
end

function sfCursor_createFromPixels(pixels, size, hotspot)
    ccall((:sfCursor_createFromPixels, libcimgui), Ptr{sfCursor}, (Ptr{sfUint8}, sfVector2u, sfVector2u), pixels, size, hotspot)
end

function sfCursor_createFromSystem(type)
    ccall((:sfCursor_createFromSystem, libcimgui), Ptr{sfCursor}, (sfCursorType,), type)
end

function sfCursor_destroy(cursor)
    ccall((:sfCursor_destroy, libcimgui), Cvoid, (Ptr{sfCursor},), cursor)
end

function sfTouch_isDown(finger)
    ccall((:sfTouch_isDown, libcimgui), sfBool, (Cuint,), finger)
end

function sfTouch_getPosition(finger, relativeTo)
    ccall((:sfTouch_getPosition, libcimgui), sfVector2i, (Cuint, Ptr{sfWindow}), finger, relativeTo)
end

@cenum sfBlendFactor::UInt32 begin
    sfBlendFactorZero = 0
    sfBlendFactorOne = 1
    sfBlendFactorSrcColor = 2
    sfBlendFactorOneMinusSrcColor = 3
    sfBlendFactorDstColor = 4
    sfBlendFactorOneMinusDstColor = 5
    sfBlendFactorSrcAlpha = 6
    sfBlendFactorOneMinusSrcAlpha = 7
    sfBlendFactorDstAlpha = 8
    sfBlendFactorOneMinusDstAlpha = 9
end

@cenum sfBlendEquation::UInt32 begin
    sfBlendEquationAdd = 0
    sfBlendEquationSubtract = 1
    sfBlendEquationReverseSubtract = 2
end

struct sfBlendMode
    colorSrcFactor::sfBlendFactor
    colorDstFactor::sfBlendFactor
    colorEquation::sfBlendEquation
    alphaSrcFactor::sfBlendFactor
    alphaDstFactor::sfBlendFactor
    alphaEquation::sfBlendEquation
end

struct sfColor
    r::sfUint8
    g::sfUint8
    b::sfUint8
    a::sfUint8
end

function sfColor_fromRGB(red, green, blue)
    ccall((:sfColor_fromRGB, libcimgui), sfColor, (sfUint8, sfUint8, sfUint8), red, green, blue)
end

function sfColor_fromRGBA(red, green, blue, alpha)
    ccall((:sfColor_fromRGBA, libcimgui), sfColor, (sfUint8, sfUint8, sfUint8, sfUint8), red, green, blue, alpha)
end

function sfColor_fromInteger(color)
    ccall((:sfColor_fromInteger, libcimgui), sfColor, (sfUint32,), color)
end

function sfColor_toInteger(color)
    ccall((:sfColor_toInteger, libcimgui), sfUint32, (sfColor,), color)
end

function sfColor_add(color1, color2)
    ccall((:sfColor_add, libcimgui), sfColor, (sfColor, sfColor), color1, color2)
end

function sfColor_subtract(color1, color2)
    ccall((:sfColor_subtract, libcimgui), sfColor, (sfColor, sfColor), color1, color2)
end

function sfColor_modulate(color1, color2)
    ccall((:sfColor_modulate, libcimgui), sfColor, (sfColor, sfColor), color1, color2)
end

struct sfFloatRect
    left::Cfloat
    top::Cfloat
    width::Cfloat
    height::Cfloat
end

struct sfIntRect
    left::Cint
    top::Cint
    width::Cint
    height::Cint
end

function sfFloatRect_contains(rect, x, y)
    ccall((:sfFloatRect_contains, libcimgui), sfBool, (Ptr{sfFloatRect}, Cfloat, Cfloat), rect, x, y)
end

function sfIntRect_contains(rect, x, y)
    ccall((:sfIntRect_contains, libcimgui), sfBool, (Ptr{sfIntRect}, Cint, Cint), rect, x, y)
end

function sfFloatRect_intersects(rect1, rect2, intersection)
    ccall((:sfFloatRect_intersects, libcimgui), sfBool, (Ptr{sfFloatRect}, Ptr{sfFloatRect}, Ptr{sfFloatRect}), rect1, rect2, intersection)
end

function sfIntRect_intersects(rect1, rect2, intersection)
    ccall((:sfIntRect_intersects, libcimgui), sfBool, (Ptr{sfIntRect}, Ptr{sfIntRect}, Ptr{sfIntRect}), rect1, rect2, intersection)
end

mutable struct sfCircleShape end

mutable struct sfConvexShape end

mutable struct sfFont end

mutable struct sfImage end

mutable struct sfShader end

mutable struct sfRectangleShape end

mutable struct sfRenderTexture end

mutable struct sfRenderWindow end

mutable struct sfShape end

mutable struct sfSprite end

mutable struct sfText end

mutable struct sfTexture end

mutable struct sfTransformable end

mutable struct sfVertexArray end

mutable struct sfVertexBuffer end

mutable struct sfView end

struct sfTransform
    matrix::NTuple{9, Cfloat}
end

function sfTransform_fromMatrix(a00, a01, a02, a10, a11, a12, a20, a21, a22)
    ccall((:sfTransform_fromMatrix, libcimgui), sfTransform, (Cfloat, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat), a00, a01, a02, a10, a11, a12, a20, a21, a22)
end

function sfTransform_getMatrix(transform, matrix)
    ccall((:sfTransform_getMatrix, libcimgui), Cvoid, (Ptr{sfTransform}, Ptr{Cfloat}), transform, matrix)
end

function sfTransform_getInverse(transform)
    ccall((:sfTransform_getInverse, libcimgui), sfTransform, (Ptr{sfTransform},), transform)
end

function sfTransform_transformPoint(transform, point)
    ccall((:sfTransform_transformPoint, libcimgui), sfVector2f, (Ptr{sfTransform}, sfVector2f), transform, point)
end

function sfTransform_transformRect(transform, rectangle)
    ccall((:sfTransform_transformRect, libcimgui), sfFloatRect, (Ptr{sfTransform}, sfFloatRect), transform, rectangle)
end

function sfTransform_combine(transform, other)
    ccall((:sfTransform_combine, libcimgui), Cvoid, (Ptr{sfTransform}, Ptr{sfTransform}), transform, other)
end

function sfTransform_translate(transform, x, y)
    ccall((:sfTransform_translate, libcimgui), Cvoid, (Ptr{sfTransform}, Cfloat, Cfloat), transform, x, y)
end

function sfTransform_rotate(transform, angle)
    ccall((:sfTransform_rotate, libcimgui), Cvoid, (Ptr{sfTransform}, Cfloat), transform, angle)
end

function sfTransform_rotateWithCenter(transform, angle, centerX, centerY)
    ccall((:sfTransform_rotateWithCenter, libcimgui), Cvoid, (Ptr{sfTransform}, Cfloat, Cfloat, Cfloat), transform, angle, centerX, centerY)
end

function sfTransform_scale(transform, scaleX, scaleY)
    ccall((:sfTransform_scale, libcimgui), Cvoid, (Ptr{sfTransform}, Cfloat, Cfloat), transform, scaleX, scaleY)
end

function sfTransform_scaleWithCenter(transform, scaleX, scaleY, centerX, centerY)
    ccall((:sfTransform_scaleWithCenter, libcimgui), Cvoid, (Ptr{sfTransform}, Cfloat, Cfloat, Cfloat, Cfloat), transform, scaleX, scaleY, centerX, centerY)
end

function sfTransform_equal(left, right)
    ccall((:sfTransform_equal, libcimgui), sfBool, (Ptr{sfTransform}, Ptr{sfTransform}), left, right)
end

function sfCircleShape_create()
    ccall((:sfCircleShape_create, libcimgui), Ptr{sfCircleShape}, ())
end

function sfCircleShape_copy(shape)
    ccall((:sfCircleShape_copy, libcimgui), Ptr{sfCircleShape}, (Ptr{sfCircleShape},), shape)
end

function sfCircleShape_destroy(shape)
    ccall((:sfCircleShape_destroy, libcimgui), Cvoid, (Ptr{sfCircleShape},), shape)
end

function sfCircleShape_setPosition(shape, position)
    ccall((:sfCircleShape_setPosition, libcimgui), Cvoid, (Ptr{sfCircleShape}, sfVector2f), shape, position)
end

function sfCircleShape_setRotation(shape, angle)
    ccall((:sfCircleShape_setRotation, libcimgui), Cvoid, (Ptr{sfCircleShape}, Cfloat), shape, angle)
end

function sfCircleShape_setScale(shape, scale)
    ccall((:sfCircleShape_setScale, libcimgui), Cvoid, (Ptr{sfCircleShape}, sfVector2f), shape, scale)
end

function sfCircleShape_setOrigin(shape, origin)
    ccall((:sfCircleShape_setOrigin, libcimgui), Cvoid, (Ptr{sfCircleShape}, sfVector2f), shape, origin)
end

function sfCircleShape_getPosition(shape)
    ccall((:sfCircleShape_getPosition, libcimgui), sfVector2f, (Ptr{sfCircleShape},), shape)
end

function sfCircleShape_getRotation(shape)
    ccall((:sfCircleShape_getRotation, libcimgui), Cfloat, (Ptr{sfCircleShape},), shape)
end

function sfCircleShape_getScale(shape)
    ccall((:sfCircleShape_getScale, libcimgui), sfVector2f, (Ptr{sfCircleShape},), shape)
end

function sfCircleShape_getOrigin(shape)
    ccall((:sfCircleShape_getOrigin, libcimgui), sfVector2f, (Ptr{sfCircleShape},), shape)
end

function sfCircleShape_move(shape, offset)
    ccall((:sfCircleShape_move, libcimgui), Cvoid, (Ptr{sfCircleShape}, sfVector2f), shape, offset)
end

function sfCircleShape_rotate(shape, angle)
    ccall((:sfCircleShape_rotate, libcimgui), Cvoid, (Ptr{sfCircleShape}, Cfloat), shape, angle)
end

function sfCircleShape_scale(shape, factors)
    ccall((:sfCircleShape_scale, libcimgui), Cvoid, (Ptr{sfCircleShape}, sfVector2f), shape, factors)
end

function sfCircleShape_getTransform(shape)
    ccall((:sfCircleShape_getTransform, libcimgui), sfTransform, (Ptr{sfCircleShape},), shape)
end

function sfCircleShape_getInverseTransform(shape)
    ccall((:sfCircleShape_getInverseTransform, libcimgui), sfTransform, (Ptr{sfCircleShape},), shape)
end

function sfCircleShape_setTexture(shape, texture, resetRect)
    ccall((:sfCircleShape_setTexture, libcimgui), Cvoid, (Ptr{sfCircleShape}, Ptr{sfTexture}, sfBool), shape, texture, resetRect)
end

function sfCircleShape_setTextureRect(shape, rect)
    ccall((:sfCircleShape_setTextureRect, libcimgui), Cvoid, (Ptr{sfCircleShape}, sfIntRect), shape, rect)
end

function sfCircleShape_setFillColor(shape, color)
    ccall((:sfCircleShape_setFillColor, libcimgui), Cvoid, (Ptr{sfCircleShape}, sfColor), shape, color)
end

function sfCircleShape_setOutlineColor(shape, color)
    ccall((:sfCircleShape_setOutlineColor, libcimgui), Cvoid, (Ptr{sfCircleShape}, sfColor), shape, color)
end

function sfCircleShape_setOutlineThickness(shape, thickness)
    ccall((:sfCircleShape_setOutlineThickness, libcimgui), Cvoid, (Ptr{sfCircleShape}, Cfloat), shape, thickness)
end

function sfCircleShape_getTexture(shape)
    ccall((:sfCircleShape_getTexture, libcimgui), Ptr{sfTexture}, (Ptr{sfCircleShape},), shape)
end

function sfCircleShape_getTextureRect(shape)
    ccall((:sfCircleShape_getTextureRect, libcimgui), sfIntRect, (Ptr{sfCircleShape},), shape)
end

function sfCircleShape_getFillColor(shape)
    ccall((:sfCircleShape_getFillColor, libcimgui), sfColor, (Ptr{sfCircleShape},), shape)
end

function sfCircleShape_getOutlineColor(shape)
    ccall((:sfCircleShape_getOutlineColor, libcimgui), sfColor, (Ptr{sfCircleShape},), shape)
end

function sfCircleShape_getOutlineThickness(shape)
    ccall((:sfCircleShape_getOutlineThickness, libcimgui), Cfloat, (Ptr{sfCircleShape},), shape)
end

function sfCircleShape_getPointCount(shape)
    ccall((:sfCircleShape_getPointCount, libcimgui), Csize_t, (Ptr{sfCircleShape},), shape)
end

function sfCircleShape_getPoint(shape, index)
    ccall((:sfCircleShape_getPoint, libcimgui), sfVector2f, (Ptr{sfCircleShape}, Csize_t), shape, index)
end

function sfCircleShape_setRadius(shape, radius)
    ccall((:sfCircleShape_setRadius, libcimgui), Cvoid, (Ptr{sfCircleShape}, Cfloat), shape, radius)
end

function sfCircleShape_getRadius(shape)
    ccall((:sfCircleShape_getRadius, libcimgui), Cfloat, (Ptr{sfCircleShape},), shape)
end

function sfCircleShape_setPointCount(shape, count)
    ccall((:sfCircleShape_setPointCount, libcimgui), Cvoid, (Ptr{sfCircleShape}, Csize_t), shape, count)
end

function sfCircleShape_getLocalBounds(shape)
    ccall((:sfCircleShape_getLocalBounds, libcimgui), sfFloatRect, (Ptr{sfCircleShape},), shape)
end

function sfCircleShape_getGlobalBounds(shape)
    ccall((:sfCircleShape_getGlobalBounds, libcimgui), sfFloatRect, (Ptr{sfCircleShape},), shape)
end

function sfConvexShape_create()
    ccall((:sfConvexShape_create, libcimgui), Ptr{sfConvexShape}, ())
end

function sfConvexShape_copy(shape)
    ccall((:sfConvexShape_copy, libcimgui), Ptr{sfConvexShape}, (Ptr{sfConvexShape},), shape)
end

function sfConvexShape_destroy(shape)
    ccall((:sfConvexShape_destroy, libcimgui), Cvoid, (Ptr{sfConvexShape},), shape)
end

function sfConvexShape_setPosition(shape, position)
    ccall((:sfConvexShape_setPosition, libcimgui), Cvoid, (Ptr{sfConvexShape}, sfVector2f), shape, position)
end

function sfConvexShape_setRotation(shape, angle)
    ccall((:sfConvexShape_setRotation, libcimgui), Cvoid, (Ptr{sfConvexShape}, Cfloat), shape, angle)
end

function sfConvexShape_setScale(shape, scale)
    ccall((:sfConvexShape_setScale, libcimgui), Cvoid, (Ptr{sfConvexShape}, sfVector2f), shape, scale)
end

function sfConvexShape_setOrigin(shape, origin)
    ccall((:sfConvexShape_setOrigin, libcimgui), Cvoid, (Ptr{sfConvexShape}, sfVector2f), shape, origin)
end

function sfConvexShape_getPosition(shape)
    ccall((:sfConvexShape_getPosition, libcimgui), sfVector2f, (Ptr{sfConvexShape},), shape)
end

function sfConvexShape_getRotation(shape)
    ccall((:sfConvexShape_getRotation, libcimgui), Cfloat, (Ptr{sfConvexShape},), shape)
end

function sfConvexShape_getScale(shape)
    ccall((:sfConvexShape_getScale, libcimgui), sfVector2f, (Ptr{sfConvexShape},), shape)
end

function sfConvexShape_getOrigin(shape)
    ccall((:sfConvexShape_getOrigin, libcimgui), sfVector2f, (Ptr{sfConvexShape},), shape)
end

function sfConvexShape_move(shape, offset)
    ccall((:sfConvexShape_move, libcimgui), Cvoid, (Ptr{sfConvexShape}, sfVector2f), shape, offset)
end

function sfConvexShape_rotate(shape, angle)
    ccall((:sfConvexShape_rotate, libcimgui), Cvoid, (Ptr{sfConvexShape}, Cfloat), shape, angle)
end

function sfConvexShape_scale(shape, factors)
    ccall((:sfConvexShape_scale, libcimgui), Cvoid, (Ptr{sfConvexShape}, sfVector2f), shape, factors)
end

function sfConvexShape_getTransform(shape)
    ccall((:sfConvexShape_getTransform, libcimgui), sfTransform, (Ptr{sfConvexShape},), shape)
end

function sfConvexShape_getInverseTransform(shape)
    ccall((:sfConvexShape_getInverseTransform, libcimgui), sfTransform, (Ptr{sfConvexShape},), shape)
end

function sfConvexShape_setTexture(shape, texture, resetRect)
    ccall((:sfConvexShape_setTexture, libcimgui), Cvoid, (Ptr{sfConvexShape}, Ptr{sfTexture}, sfBool), shape, texture, resetRect)
end

function sfConvexShape_setTextureRect(shape, rect)
    ccall((:sfConvexShape_setTextureRect, libcimgui), Cvoid, (Ptr{sfConvexShape}, sfIntRect), shape, rect)
end

function sfConvexShape_setFillColor(shape, color)
    ccall((:sfConvexShape_setFillColor, libcimgui), Cvoid, (Ptr{sfConvexShape}, sfColor), shape, color)
end

function sfConvexShape_setOutlineColor(shape, color)
    ccall((:sfConvexShape_setOutlineColor, libcimgui), Cvoid, (Ptr{sfConvexShape}, sfColor), shape, color)
end

function sfConvexShape_setOutlineThickness(shape, thickness)
    ccall((:sfConvexShape_setOutlineThickness, libcimgui), Cvoid, (Ptr{sfConvexShape}, Cfloat), shape, thickness)
end

function sfConvexShape_getTexture(shape)
    ccall((:sfConvexShape_getTexture, libcimgui), Ptr{sfTexture}, (Ptr{sfConvexShape},), shape)
end

function sfConvexShape_getTextureRect(shape)
    ccall((:sfConvexShape_getTextureRect, libcimgui), sfIntRect, (Ptr{sfConvexShape},), shape)
end

function sfConvexShape_getFillColor(shape)
    ccall((:sfConvexShape_getFillColor, libcimgui), sfColor, (Ptr{sfConvexShape},), shape)
end

function sfConvexShape_getOutlineColor(shape)
    ccall((:sfConvexShape_getOutlineColor, libcimgui), sfColor, (Ptr{sfConvexShape},), shape)
end

function sfConvexShape_getOutlineThickness(shape)
    ccall((:sfConvexShape_getOutlineThickness, libcimgui), Cfloat, (Ptr{sfConvexShape},), shape)
end

function sfConvexShape_getPointCount(shape)
    ccall((:sfConvexShape_getPointCount, libcimgui), Csize_t, (Ptr{sfConvexShape},), shape)
end

function sfConvexShape_getPoint(shape, index)
    ccall((:sfConvexShape_getPoint, libcimgui), sfVector2f, (Ptr{sfConvexShape}, Csize_t), shape, index)
end

function sfConvexShape_setPointCount(shape, count)
    ccall((:sfConvexShape_setPointCount, libcimgui), Cvoid, (Ptr{sfConvexShape}, Csize_t), shape, count)
end

function sfConvexShape_setPoint(shape, index, point)
    ccall((:sfConvexShape_setPoint, libcimgui), Cvoid, (Ptr{sfConvexShape}, Csize_t, sfVector2f), shape, index, point)
end

function sfConvexShape_getLocalBounds(shape)
    ccall((:sfConvexShape_getLocalBounds, libcimgui), sfFloatRect, (Ptr{sfConvexShape},), shape)
end

function sfConvexShape_getGlobalBounds(shape)
    ccall((:sfConvexShape_getGlobalBounds, libcimgui), sfFloatRect, (Ptr{sfConvexShape},), shape)
end

struct sfFontInfo
    family::Ptr{Cchar}
end

struct sfGlyph
    advance::Cfloat
    bounds::sfFloatRect
    textureRect::sfIntRect
end

function sfFont_createFromFile(filename)
    ccall((:sfFont_createFromFile, libcimgui), Ptr{sfFont}, (Ptr{Cchar},), filename)
end

function sfFont_createFromMemory(data, sizeInBytes)
    ccall((:sfFont_createFromMemory, libcimgui), Ptr{sfFont}, (Ptr{Cvoid}, Csize_t), data, sizeInBytes)
end

function sfFont_createFromStream(stream)
    ccall((:sfFont_createFromStream, libcimgui), Ptr{sfFont}, (Ptr{sfInputStream},), stream)
end

function sfFont_copy(font)
    ccall((:sfFont_copy, libcimgui), Ptr{sfFont}, (Ptr{sfFont},), font)
end

function sfFont_destroy(font)
    ccall((:sfFont_destroy, libcimgui), Cvoid, (Ptr{sfFont},), font)
end

function sfFont_getGlyph(font, codePoint, characterSize, bold, outlineThickness)
    ccall((:sfFont_getGlyph, libcimgui), sfGlyph, (Ptr{sfFont}, sfUint32, Cuint, sfBool, Cfloat), font, codePoint, characterSize, bold, outlineThickness)
end

function sfFont_getKerning(font, first, second, characterSize)
    ccall((:sfFont_getKerning, libcimgui), Cfloat, (Ptr{sfFont}, sfUint32, sfUint32, Cuint), font, first, second, characterSize)
end

function sfFont_getLineSpacing(font, characterSize)
    ccall((:sfFont_getLineSpacing, libcimgui), Cfloat, (Ptr{sfFont}, Cuint), font, characterSize)
end

function sfFont_getUnderlinePosition(font, characterSize)
    ccall((:sfFont_getUnderlinePosition, libcimgui), Cfloat, (Ptr{sfFont}, Cuint), font, characterSize)
end

function sfFont_getUnderlineThickness(font, characterSize)
    ccall((:sfFont_getUnderlineThickness, libcimgui), Cfloat, (Ptr{sfFont}, Cuint), font, characterSize)
end

function sfFont_getTexture(font, characterSize)
    ccall((:sfFont_getTexture, libcimgui), Ptr{sfTexture}, (Ptr{sfFont}, Cuint), font, characterSize)
end

function sfFont_getInfo(font)
    ccall((:sfFont_getInfo, libcimgui), sfFontInfo, (Ptr{sfFont},), font)
end

function sfImage_create(width, height)
    ccall((:sfImage_create, libcimgui), Ptr{sfImage}, (Cuint, Cuint), width, height)
end

function sfImage_createFromColor(width, height, color)
    ccall((:sfImage_createFromColor, libcimgui), Ptr{sfImage}, (Cuint, Cuint, sfColor), width, height, color)
end

function sfImage_createFromPixels(width, height, pixels)
    ccall((:sfImage_createFromPixels, libcimgui), Ptr{sfImage}, (Cuint, Cuint, Ptr{sfUint8}), width, height, pixels)
end

function sfImage_createFromFile(filename)
    ccall((:sfImage_createFromFile, libcimgui), Ptr{sfImage}, (Ptr{Cchar},), filename)
end

function sfImage_createFromMemory(data, size)
    ccall((:sfImage_createFromMemory, libcimgui), Ptr{sfImage}, (Ptr{Cvoid}, Csize_t), data, size)
end

function sfImage_createFromStream(stream)
    ccall((:sfImage_createFromStream, libcimgui), Ptr{sfImage}, (Ptr{sfInputStream},), stream)
end

function sfImage_copy(image)
    ccall((:sfImage_copy, libcimgui), Ptr{sfImage}, (Ptr{sfImage},), image)
end

function sfImage_destroy(image)
    ccall((:sfImage_destroy, libcimgui), Cvoid, (Ptr{sfImage},), image)
end

function sfImage_saveToFile(image, filename)
    ccall((:sfImage_saveToFile, libcimgui), sfBool, (Ptr{sfImage}, Ptr{Cchar}), image, filename)
end

function sfImage_getSize(image)
    ccall((:sfImage_getSize, libcimgui), sfVector2u, (Ptr{sfImage},), image)
end

function sfImage_createMaskFromColor(image, color, alpha)
    ccall((:sfImage_createMaskFromColor, libcimgui), Cvoid, (Ptr{sfImage}, sfColor, sfUint8), image, color, alpha)
end

function sfImage_copyImage(image, source, destX, destY, sourceRect, applyAlpha)
    ccall((:sfImage_copyImage, libcimgui), Cvoid, (Ptr{sfImage}, Ptr{sfImage}, Cuint, Cuint, sfIntRect, sfBool), image, source, destX, destY, sourceRect, applyAlpha)
end

function sfImage_setPixel(image, x, y, color)
    ccall((:sfImage_setPixel, libcimgui), Cvoid, (Ptr{sfImage}, Cuint, Cuint, sfColor), image, x, y, color)
end

function sfImage_getPixel(image, x, y)
    ccall((:sfImage_getPixel, libcimgui), sfColor, (Ptr{sfImage}, Cuint, Cuint), image, x, y)
end

function sfImage_getPixelsPtr(image)
    ccall((:sfImage_getPixelsPtr, libcimgui), Ptr{sfUint8}, (Ptr{sfImage},), image)
end

function sfImage_flipHorizontally(image)
    ccall((:sfImage_flipHorizontally, libcimgui), Cvoid, (Ptr{sfImage},), image)
end

function sfImage_flipVertically(image)
    ccall((:sfImage_flipVertically, libcimgui), Cvoid, (Ptr{sfImage},), image)
end

@cenum sfPrimitiveType::UInt32 begin
    sfPoints = 0
    sfLines = 1
    sfLineStrip = 2
    sfTriangles = 3
    sfTriangleStrip = 4
    sfTriangleFan = 5
    sfQuads = 6
    sfLinesStrip = 2
    sfTrianglesStrip = 4
    sfTrianglesFan = 5
end

function sfRectangleShape_create()
    ccall((:sfRectangleShape_create, libcimgui), Ptr{sfRectangleShape}, ())
end

function sfRectangleShape_copy(shape)
    ccall((:sfRectangleShape_copy, libcimgui), Ptr{sfRectangleShape}, (Ptr{sfRectangleShape},), shape)
end

function sfRectangleShape_destroy(shape)
    ccall((:sfRectangleShape_destroy, libcimgui), Cvoid, (Ptr{sfRectangleShape},), shape)
end

function sfRectangleShape_setPosition(shape, position)
    ccall((:sfRectangleShape_setPosition, libcimgui), Cvoid, (Ptr{sfRectangleShape}, sfVector2f), shape, position)
end

function sfRectangleShape_setRotation(shape, angle)
    ccall((:sfRectangleShape_setRotation, libcimgui), Cvoid, (Ptr{sfRectangleShape}, Cfloat), shape, angle)
end

function sfRectangleShape_setScale(shape, scale)
    ccall((:sfRectangleShape_setScale, libcimgui), Cvoid, (Ptr{sfRectangleShape}, sfVector2f), shape, scale)
end

function sfRectangleShape_setOrigin(shape, origin)
    ccall((:sfRectangleShape_setOrigin, libcimgui), Cvoid, (Ptr{sfRectangleShape}, sfVector2f), shape, origin)
end

function sfRectangleShape_getPosition(shape)
    ccall((:sfRectangleShape_getPosition, libcimgui), sfVector2f, (Ptr{sfRectangleShape},), shape)
end

function sfRectangleShape_getRotation(shape)
    ccall((:sfRectangleShape_getRotation, libcimgui), Cfloat, (Ptr{sfRectangleShape},), shape)
end

function sfRectangleShape_getScale(shape)
    ccall((:sfRectangleShape_getScale, libcimgui), sfVector2f, (Ptr{sfRectangleShape},), shape)
end

function sfRectangleShape_getOrigin(shape)
    ccall((:sfRectangleShape_getOrigin, libcimgui), sfVector2f, (Ptr{sfRectangleShape},), shape)
end

function sfRectangleShape_move(shape, offset)
    ccall((:sfRectangleShape_move, libcimgui), Cvoid, (Ptr{sfRectangleShape}, sfVector2f), shape, offset)
end

function sfRectangleShape_rotate(shape, angle)
    ccall((:sfRectangleShape_rotate, libcimgui), Cvoid, (Ptr{sfRectangleShape}, Cfloat), shape, angle)
end

function sfRectangleShape_scale(shape, factors)
    ccall((:sfRectangleShape_scale, libcimgui), Cvoid, (Ptr{sfRectangleShape}, sfVector2f), shape, factors)
end

function sfRectangleShape_getTransform(shape)
    ccall((:sfRectangleShape_getTransform, libcimgui), sfTransform, (Ptr{sfRectangleShape},), shape)
end

function sfRectangleShape_getInverseTransform(shape)
    ccall((:sfRectangleShape_getInverseTransform, libcimgui), sfTransform, (Ptr{sfRectangleShape},), shape)
end

function sfRectangleShape_setTexture(shape, texture, resetRect)
    ccall((:sfRectangleShape_setTexture, libcimgui), Cvoid, (Ptr{sfRectangleShape}, Ptr{sfTexture}, sfBool), shape, texture, resetRect)
end

function sfRectangleShape_setTextureRect(shape, rect)
    ccall((:sfRectangleShape_setTextureRect, libcimgui), Cvoid, (Ptr{sfRectangleShape}, sfIntRect), shape, rect)
end

function sfRectangleShape_setFillColor(shape, color)
    ccall((:sfRectangleShape_setFillColor, libcimgui), Cvoid, (Ptr{sfRectangleShape}, sfColor), shape, color)
end

function sfRectangleShape_setOutlineColor(shape, color)
    ccall((:sfRectangleShape_setOutlineColor, libcimgui), Cvoid, (Ptr{sfRectangleShape}, sfColor), shape, color)
end

function sfRectangleShape_setOutlineThickness(shape, thickness)
    ccall((:sfRectangleShape_setOutlineThickness, libcimgui), Cvoid, (Ptr{sfRectangleShape}, Cfloat), shape, thickness)
end

function sfRectangleShape_getTexture(shape)
    ccall((:sfRectangleShape_getTexture, libcimgui), Ptr{sfTexture}, (Ptr{sfRectangleShape},), shape)
end

function sfRectangleShape_getTextureRect(shape)
    ccall((:sfRectangleShape_getTextureRect, libcimgui), sfIntRect, (Ptr{sfRectangleShape},), shape)
end

function sfRectangleShape_getFillColor(shape)
    ccall((:sfRectangleShape_getFillColor, libcimgui), sfColor, (Ptr{sfRectangleShape},), shape)
end

function sfRectangleShape_getOutlineColor(shape)
    ccall((:sfRectangleShape_getOutlineColor, libcimgui), sfColor, (Ptr{sfRectangleShape},), shape)
end

function sfRectangleShape_getOutlineThickness(shape)
    ccall((:sfRectangleShape_getOutlineThickness, libcimgui), Cfloat, (Ptr{sfRectangleShape},), shape)
end

function sfRectangleShape_getPointCount(shape)
    ccall((:sfRectangleShape_getPointCount, libcimgui), Csize_t, (Ptr{sfRectangleShape},), shape)
end

function sfRectangleShape_getPoint(shape, index)
    ccall((:sfRectangleShape_getPoint, libcimgui), sfVector2f, (Ptr{sfRectangleShape}, Csize_t), shape, index)
end

function sfRectangleShape_setSize(shape, size)
    ccall((:sfRectangleShape_setSize, libcimgui), Cvoid, (Ptr{sfRectangleShape}, sfVector2f), shape, size)
end

function sfRectangleShape_getSize(shape)
    ccall((:sfRectangleShape_getSize, libcimgui), sfVector2f, (Ptr{sfRectangleShape},), shape)
end

function sfRectangleShape_getLocalBounds(shape)
    ccall((:sfRectangleShape_getLocalBounds, libcimgui), sfFloatRect, (Ptr{sfRectangleShape},), shape)
end

function sfRectangleShape_getGlobalBounds(shape)
    ccall((:sfRectangleShape_getGlobalBounds, libcimgui), sfFloatRect, (Ptr{sfRectangleShape},), shape)
end

struct sfRenderStates
    blendMode::sfBlendMode
    transform::sfTransform
    texture::Ptr{sfTexture}
    shader::Ptr{sfShader}
end

struct sfVertex
    position::sfVector2f
    color::sfColor
    texCoords::sfVector2f
end

function sfRenderTexture_create(width, height, depthBuffer)
    ccall((:sfRenderTexture_create, libcimgui), Ptr{sfRenderTexture}, (Cuint, Cuint, sfBool), width, height, depthBuffer)
end

function sfRenderTexture_createWithSettings(width, height, settings)
    ccall((:sfRenderTexture_createWithSettings, libcimgui), Ptr{sfRenderTexture}, (Cuint, Cuint, sfContextSettings), width, height, settings)
end

function sfRenderTexture_destroy(renderTexture)
    ccall((:sfRenderTexture_destroy, libcimgui), Cvoid, (Ptr{sfRenderTexture},), renderTexture)
end

function sfRenderTexture_getSize(renderTexture)
    ccall((:sfRenderTexture_getSize, libcimgui), sfVector2u, (Ptr{sfRenderTexture},), renderTexture)
end

function sfRenderTexture_setActive(renderTexture, active)
    ccall((:sfRenderTexture_setActive, libcimgui), sfBool, (Ptr{sfRenderTexture}, sfBool), renderTexture, active)
end

function sfRenderTexture_display(renderTexture)
    ccall((:sfRenderTexture_display, libcimgui), Cvoid, (Ptr{sfRenderTexture},), renderTexture)
end

function sfRenderTexture_clear(renderTexture, color)
    ccall((:sfRenderTexture_clear, libcimgui), Cvoid, (Ptr{sfRenderTexture}, sfColor), renderTexture, color)
end

function sfRenderTexture_setView(renderTexture, view)
    ccall((:sfRenderTexture_setView, libcimgui), Cvoid, (Ptr{sfRenderTexture}, Ptr{sfView}), renderTexture, view)
end

function sfRenderTexture_getView(renderTexture)
    ccall((:sfRenderTexture_getView, libcimgui), Ptr{sfView}, (Ptr{sfRenderTexture},), renderTexture)
end

function sfRenderTexture_getDefaultView(renderTexture)
    ccall((:sfRenderTexture_getDefaultView, libcimgui), Ptr{sfView}, (Ptr{sfRenderTexture},), renderTexture)
end

function sfRenderTexture_getViewport(renderTexture, view)
    ccall((:sfRenderTexture_getViewport, libcimgui), sfIntRect, (Ptr{sfRenderTexture}, Ptr{sfView}), renderTexture, view)
end

function sfRenderTexture_mapPixelToCoords(renderTexture, point, view)
    ccall((:sfRenderTexture_mapPixelToCoords, libcimgui), sfVector2f, (Ptr{sfRenderTexture}, sfVector2i, Ptr{sfView}), renderTexture, point, view)
end

function sfRenderTexture_mapCoordsToPixel(renderTexture, point, view)
    ccall((:sfRenderTexture_mapCoordsToPixel, libcimgui), sfVector2i, (Ptr{sfRenderTexture}, sfVector2f, Ptr{sfView}), renderTexture, point, view)
end

function sfRenderTexture_drawSprite(renderTexture, object, states)
    ccall((:sfRenderTexture_drawSprite, libcimgui), Cvoid, (Ptr{sfRenderTexture}, Ptr{sfSprite}, Ptr{sfRenderStates}), renderTexture, object, states)
end

function sfRenderTexture_drawText(renderTexture, object, states)
    ccall((:sfRenderTexture_drawText, libcimgui), Cvoid, (Ptr{sfRenderTexture}, Ptr{sfText}, Ptr{sfRenderStates}), renderTexture, object, states)
end

function sfRenderTexture_drawShape(renderTexture, object, states)
    ccall((:sfRenderTexture_drawShape, libcimgui), Cvoid, (Ptr{sfRenderTexture}, Ptr{sfShape}, Ptr{sfRenderStates}), renderTexture, object, states)
end

function sfRenderTexture_drawCircleShape(renderTexture, object, states)
    ccall((:sfRenderTexture_drawCircleShape, libcimgui), Cvoid, (Ptr{sfRenderTexture}, Ptr{sfCircleShape}, Ptr{sfRenderStates}), renderTexture, object, states)
end

function sfRenderTexture_drawConvexShape(renderTexture, object, states)
    ccall((:sfRenderTexture_drawConvexShape, libcimgui), Cvoid, (Ptr{sfRenderTexture}, Ptr{sfConvexShape}, Ptr{sfRenderStates}), renderTexture, object, states)
end

function sfRenderTexture_drawRectangleShape(renderTexture, object, states)
    ccall((:sfRenderTexture_drawRectangleShape, libcimgui), Cvoid, (Ptr{sfRenderTexture}, Ptr{sfRectangleShape}, Ptr{sfRenderStates}), renderTexture, object, states)
end

function sfRenderTexture_drawVertexArray(renderTexture, object, states)
    ccall((:sfRenderTexture_drawVertexArray, libcimgui), Cvoid, (Ptr{sfRenderTexture}, Ptr{sfVertexArray}, Ptr{sfRenderStates}), renderTexture, object, states)
end

function sfRenderTexture_drawVertexBuffer(renderTexture, object, states)
    ccall((:sfRenderTexture_drawVertexBuffer, libcimgui), Cvoid, (Ptr{sfRenderTexture}, Ptr{sfVertexBuffer}, Ptr{sfRenderStates}), renderTexture, object, states)
end

function sfRenderTexture_drawPrimitives(renderTexture, vertices, vertexCount, type, states)
    ccall((:sfRenderTexture_drawPrimitives, libcimgui), Cvoid, (Ptr{sfRenderTexture}, Ptr{sfVertex}, Csize_t, sfPrimitiveType, Ptr{sfRenderStates}), renderTexture, vertices, vertexCount, type, states)
end

function sfRenderTexture_pushGLStates(renderTexture)
    ccall((:sfRenderTexture_pushGLStates, libcimgui), Cvoid, (Ptr{sfRenderTexture},), renderTexture)
end

function sfRenderTexture_popGLStates(renderTexture)
    ccall((:sfRenderTexture_popGLStates, libcimgui), Cvoid, (Ptr{sfRenderTexture},), renderTexture)
end

function sfRenderTexture_resetGLStates(renderTexture)
    ccall((:sfRenderTexture_resetGLStates, libcimgui), Cvoid, (Ptr{sfRenderTexture},), renderTexture)
end

function sfRenderTexture_getTexture(renderTexture)
    ccall((:sfRenderTexture_getTexture, libcimgui), Ptr{sfTexture}, (Ptr{sfRenderTexture},), renderTexture)
end

# no prototype is found for this function at RenderTexture.h:305:14, please use with caution
function sfRenderTexture_getMaximumAntialiasingLevel()
    ccall((:sfRenderTexture_getMaximumAntialiasingLevel, libcimgui), Cuint, ())
end

function sfRenderTexture_setSmooth(renderTexture, smooth)
    ccall((:sfRenderTexture_setSmooth, libcimgui), Cvoid, (Ptr{sfRenderTexture}, sfBool), renderTexture, smooth)
end

function sfRenderTexture_isSmooth(renderTexture)
    ccall((:sfRenderTexture_isSmooth, libcimgui), sfBool, (Ptr{sfRenderTexture},), renderTexture)
end

function sfRenderTexture_setRepeated(renderTexture, repeated)
    ccall((:sfRenderTexture_setRepeated, libcimgui), Cvoid, (Ptr{sfRenderTexture}, sfBool), renderTexture, repeated)
end

function sfRenderTexture_isRepeated(renderTexture)
    ccall((:sfRenderTexture_isRepeated, libcimgui), sfBool, (Ptr{sfRenderTexture},), renderTexture)
end

function sfRenderTexture_generateMipmap(renderTexture)
    ccall((:sfRenderTexture_generateMipmap, libcimgui), sfBool, (Ptr{sfRenderTexture},), renderTexture)
end

function sfRenderWindow_create(mode, title, style, settings)
    ccall((:sfRenderWindow_create, libcimgui), Ptr{sfRenderWindow}, (sfVideoMode, Ptr{Cchar}, sfUint32, Ptr{sfContextSettings}), mode, title, style, settings)
end

function sfRenderWindow_createUnicode(mode, title, style, settings)
    ccall((:sfRenderWindow_createUnicode, libcimgui), Ptr{sfRenderWindow}, (sfVideoMode, Ptr{sfUint32}, sfUint32, Ptr{sfContextSettings}), mode, title, style, settings)
end

function sfRenderWindow_createFromHandle(handle, settings)
    ccall((:sfRenderWindow_createFromHandle, libcimgui), Ptr{sfRenderWindow}, (sfWindowHandle, Ptr{sfContextSettings}), handle, settings)
end

function sfRenderWindow_destroy(renderWindow)
    ccall((:sfRenderWindow_destroy, libcimgui), Cvoid, (Ptr{sfRenderWindow},), renderWindow)
end

function sfRenderWindow_close(renderWindow)
    ccall((:sfRenderWindow_close, libcimgui), Cvoid, (Ptr{sfRenderWindow},), renderWindow)
end

function sfRenderWindow_isOpen(renderWindow)
    ccall((:sfRenderWindow_isOpen, libcimgui), sfBool, (Ptr{sfRenderWindow},), renderWindow)
end

function sfRenderWindow_getSettings(renderWindow)
    ccall((:sfRenderWindow_getSettings, libcimgui), sfContextSettings, (Ptr{sfRenderWindow},), renderWindow)
end

function sfRenderWindow_pollEvent(renderWindow, event)
    ccall((:sfRenderWindow_pollEvent, libcimgui), sfBool, (Ptr{sfRenderWindow}, Ptr{sfEvent}), renderWindow, event)
end

function sfRenderWindow_waitEvent(renderWindow, event)
    ccall((:sfRenderWindow_waitEvent, libcimgui), sfBool, (Ptr{sfRenderWindow}, Ptr{sfEvent}), renderWindow, event)
end

function sfRenderWindow_getPosition(renderWindow)
    ccall((:sfRenderWindow_getPosition, libcimgui), sfVector2i, (Ptr{sfRenderWindow},), renderWindow)
end

function sfRenderWindow_setPosition(renderWindow, position)
    ccall((:sfRenderWindow_setPosition, libcimgui), Cvoid, (Ptr{sfRenderWindow}, sfVector2i), renderWindow, position)
end

function sfRenderWindow_getSize(renderWindow)
    ccall((:sfRenderWindow_getSize, libcimgui), sfVector2u, (Ptr{sfRenderWindow},), renderWindow)
end

function sfRenderWindow_setSize(renderWindow, size)
    ccall((:sfRenderWindow_setSize, libcimgui), Cvoid, (Ptr{sfRenderWindow}, sfVector2u), renderWindow, size)
end

function sfRenderWindow_setTitle(renderWindow, title)
    ccall((:sfRenderWindow_setTitle, libcimgui), Cvoid, (Ptr{sfRenderWindow}, Ptr{Cchar}), renderWindow, title)
end

function sfRenderWindow_setUnicodeTitle(renderWindow, title)
    ccall((:sfRenderWindow_setUnicodeTitle, libcimgui), Cvoid, (Ptr{sfRenderWindow}, Ptr{sfUint32}), renderWindow, title)
end

function sfRenderWindow_setIcon(renderWindow, width, height, pixels)
    ccall((:sfRenderWindow_setIcon, libcimgui), Cvoid, (Ptr{sfRenderWindow}, Cuint, Cuint, Ptr{sfUint8}), renderWindow, width, height, pixels)
end

function sfRenderWindow_setVisible(renderWindow, visible)
    ccall((:sfRenderWindow_setVisible, libcimgui), Cvoid, (Ptr{sfRenderWindow}, sfBool), renderWindow, visible)
end

function sfRenderWindow_setVerticalSyncEnabled(renderWindow, enabled)
    ccall((:sfRenderWindow_setVerticalSyncEnabled, libcimgui), Cvoid, (Ptr{sfRenderWindow}, sfBool), renderWindow, enabled)
end

function sfRenderWindow_setMouseCursorVisible(renderWindow, show)
    ccall((:sfRenderWindow_setMouseCursorVisible, libcimgui), Cvoid, (Ptr{sfRenderWindow}, sfBool), renderWindow, show)
end

function sfRenderWindow_setMouseCursorGrabbed(renderWindow, grabbed)
    ccall((:sfRenderWindow_setMouseCursorGrabbed, libcimgui), Cvoid, (Ptr{sfRenderWindow}, sfBool), renderWindow, grabbed)
end

function sfRenderWindow_setMouseCursor(window, cursor)
    ccall((:sfRenderWindow_setMouseCursor, libcimgui), Cvoid, (Ptr{sfRenderWindow}, Ptr{sfCursor}), window, cursor)
end

function sfRenderWindow_setKeyRepeatEnabled(renderWindow, enabled)
    ccall((:sfRenderWindow_setKeyRepeatEnabled, libcimgui), Cvoid, (Ptr{sfRenderWindow}, sfBool), renderWindow, enabled)
end

function sfRenderWindow_setFramerateLimit(renderWindow, limit)
    ccall((:sfRenderWindow_setFramerateLimit, libcimgui), Cvoid, (Ptr{sfRenderWindow}, Cuint), renderWindow, limit)
end

function sfRenderWindow_setJoystickThreshold(renderWindow, threshold)
    ccall((:sfRenderWindow_setJoystickThreshold, libcimgui), Cvoid, (Ptr{sfRenderWindow}, Cfloat), renderWindow, threshold)
end

function sfRenderWindow_setActive(renderWindow, active)
    ccall((:sfRenderWindow_setActive, libcimgui), sfBool, (Ptr{sfRenderWindow}, sfBool), renderWindow, active)
end

function sfRenderWindow_requestFocus(renderWindow)
    ccall((:sfRenderWindow_requestFocus, libcimgui), Cvoid, (Ptr{sfRenderWindow},), renderWindow)
end

function sfRenderWindow_hasFocus(renderWindow)
    ccall((:sfRenderWindow_hasFocus, libcimgui), sfBool, (Ptr{sfRenderWindow},), renderWindow)
end

function sfRenderWindow_display(renderWindow)
    ccall((:sfRenderWindow_display, libcimgui), Cvoid, (Ptr{sfRenderWindow},), renderWindow)
end

function sfRenderWindow_getSystemHandle(renderWindow)
    ccall((:sfRenderWindow_getSystemHandle, libcimgui), sfWindowHandle, (Ptr{sfRenderWindow},), renderWindow)
end

function sfRenderWindow_clear(renderWindow, color)
    ccall((:sfRenderWindow_clear, libcimgui), Cvoid, (Ptr{sfRenderWindow}, sfColor), renderWindow, color)
end

function sfRenderWindow_setView(renderWindow, view)
    ccall((:sfRenderWindow_setView, libcimgui), Cvoid, (Ptr{sfRenderWindow}, Ptr{sfView}), renderWindow, view)
end

function sfRenderWindow_getView(renderWindow)
    ccall((:sfRenderWindow_getView, libcimgui), Ptr{sfView}, (Ptr{sfRenderWindow},), renderWindow)
end

function sfRenderWindow_getDefaultView(renderWindow)
    ccall((:sfRenderWindow_getDefaultView, libcimgui), Ptr{sfView}, (Ptr{sfRenderWindow},), renderWindow)
end

function sfRenderWindow_getViewport(renderWindow, view)
    ccall((:sfRenderWindow_getViewport, libcimgui), sfIntRect, (Ptr{sfRenderWindow}, Ptr{sfView}), renderWindow, view)
end

function sfRenderWindow_mapPixelToCoords(renderWindow, point, view)
    ccall((:sfRenderWindow_mapPixelToCoords, libcimgui), sfVector2f, (Ptr{sfRenderWindow}, sfVector2i, Ptr{sfView}), renderWindow, point, view)
end

function sfRenderWindow_mapCoordsToPixel(renderWindow, point, view)
    ccall((:sfRenderWindow_mapCoordsToPixel, libcimgui), sfVector2i, (Ptr{sfRenderWindow}, sfVector2f, Ptr{sfView}), renderWindow, point, view)
end

function sfRenderWindow_drawSprite(renderWindow, object, states)
    ccall((:sfRenderWindow_drawSprite, libcimgui), Cvoid, (Ptr{sfRenderWindow}, Ptr{sfSprite}, Ptr{sfRenderStates}), renderWindow, object, states)
end

function sfRenderWindow_drawText(renderWindow, object, states)
    ccall((:sfRenderWindow_drawText, libcimgui), Cvoid, (Ptr{sfRenderWindow}, Ptr{sfText}, Ptr{sfRenderStates}), renderWindow, object, states)
end

function sfRenderWindow_drawShape(renderWindow, object, states)
    ccall((:sfRenderWindow_drawShape, libcimgui), Cvoid, (Ptr{sfRenderWindow}, Ptr{sfShape}, Ptr{sfRenderStates}), renderWindow, object, states)
end

function sfRenderWindow_drawCircleShape(renderWindow, object, states)
    ccall((:sfRenderWindow_drawCircleShape, libcimgui), Cvoid, (Ptr{sfRenderWindow}, Ptr{sfCircleShape}, Ptr{sfRenderStates}), renderWindow, object, states)
end

function sfRenderWindow_drawConvexShape(renderWindow, object, states)
    ccall((:sfRenderWindow_drawConvexShape, libcimgui), Cvoid, (Ptr{sfRenderWindow}, Ptr{sfConvexShape}, Ptr{sfRenderStates}), renderWindow, object, states)
end

function sfRenderWindow_drawRectangleShape(renderWindow, object, states)
    ccall((:sfRenderWindow_drawRectangleShape, libcimgui), Cvoid, (Ptr{sfRenderWindow}, Ptr{sfRectangleShape}, Ptr{sfRenderStates}), renderWindow, object, states)
end

function sfRenderWindow_drawVertexArray(renderWindow, object, states)
    ccall((:sfRenderWindow_drawVertexArray, libcimgui), Cvoid, (Ptr{sfRenderWindow}, Ptr{sfVertexArray}, Ptr{sfRenderStates}), renderWindow, object, states)
end

function sfRenderWindow_drawVertexBuffer(renderWindow, object, states)
    ccall((:sfRenderWindow_drawVertexBuffer, libcimgui), Cvoid, (Ptr{sfRenderWindow}, Ptr{sfVertexBuffer}, Ptr{sfRenderStates}), renderWindow, object, states)
end

function sfRenderWindow_drawPrimitives(renderWindow, vertices, vertexCount, type, states)
    ccall((:sfRenderWindow_drawPrimitives, libcimgui), Cvoid, (Ptr{sfRenderWindow}, Ptr{sfVertex}, Csize_t, sfPrimitiveType, Ptr{sfRenderStates}), renderWindow, vertices, vertexCount, type, states)
end

function sfRenderWindow_pushGLStates(renderWindow)
    ccall((:sfRenderWindow_pushGLStates, libcimgui), Cvoid, (Ptr{sfRenderWindow},), renderWindow)
end

function sfRenderWindow_popGLStates(renderWindow)
    ccall((:sfRenderWindow_popGLStates, libcimgui), Cvoid, (Ptr{sfRenderWindow},), renderWindow)
end

function sfRenderWindow_resetGLStates(renderWindow)
    ccall((:sfRenderWindow_resetGLStates, libcimgui), Cvoid, (Ptr{sfRenderWindow},), renderWindow)
end

function sfRenderWindow_capture(renderWindow)
    ccall((:sfRenderWindow_capture, libcimgui), Ptr{sfImage}, (Ptr{sfRenderWindow},), renderWindow)
end

function sfMouse_getPositionRenderWindow(relativeTo)
    ccall((:sfMouse_getPositionRenderWindow, libcimgui), sfVector2i, (Ptr{sfRenderWindow},), relativeTo)
end

function sfMouse_setPositionRenderWindow(position, relativeTo)
    ccall((:sfMouse_setPositionRenderWindow, libcimgui), Cvoid, (sfVector2i, Ptr{sfRenderWindow}), position, relativeTo)
end

function sfTouch_getPositionRenderWindow(finger, relativeTo)
    ccall((:sfTouch_getPositionRenderWindow, libcimgui), sfVector2i, (Cuint, Ptr{sfRenderWindow}), finger, relativeTo)
end

const sfGlslVec2 = sfVector2f

const sfGlslIvec2 = sfVector2i

struct sfGlslBvec2
    x::sfBool
    y::sfBool
end

const sfGlslVec3 = sfVector3f

struct sfGlslIvec3
    x::Cint
    y::Cint
    z::Cint
end

struct sfGlslBvec3
    x::sfBool
    y::sfBool
    z::sfBool
end

struct sfGlslVec4
    x::Cfloat
    y::Cfloat
    z::Cfloat
    w::Cfloat
end

struct sfGlslIvec4
    x::Cint
    y::Cint
    z::Cint
    w::Cint
end

struct sfGlslBvec4
    x::sfBool
    y::sfBool
    z::sfBool
    w::sfBool
end

struct sfGlslMat3
    array::NTuple{9, Cfloat}
end

struct sfGlslMat4
    array::NTuple{16, Cfloat}
end

function sfShader_createFromFile(vertexShaderFilename, geometryShaderFilename, fragmentShaderFilename)
    ccall((:sfShader_createFromFile, libcimgui), Ptr{sfShader}, (Ptr{Cchar}, Ptr{Cchar}, Ptr{Cchar}), vertexShaderFilename, geometryShaderFilename, fragmentShaderFilename)
end

function sfShader_createFromMemory(vertexShader, geometryShader, fragmentShader)
    ccall((:sfShader_createFromMemory, libcimgui), Ptr{sfShader}, (Ptr{Cchar}, Ptr{Cchar}, Ptr{Cchar}), vertexShader, geometryShader, fragmentShader)
end

function sfShader_createFromStream(vertexShaderStream, geometryShaderStream, fragmentShaderStream)
    ccall((:sfShader_createFromStream, libcimgui), Ptr{sfShader}, (Ptr{sfInputStream}, Ptr{sfInputStream}, Ptr{sfInputStream}), vertexShaderStream, geometryShaderStream, fragmentShaderStream)
end

function sfShader_destroy(shader)
    ccall((:sfShader_destroy, libcimgui), Cvoid, (Ptr{sfShader},), shader)
end

function sfShader_setFloatUniform(shader, name, x)
    ccall((:sfShader_setFloatUniform, libcimgui), Cvoid, (Ptr{sfShader}, Ptr{Cchar}, Cfloat), shader, name, x)
end

function sfShader_setVec2Uniform(shader, name, vector)
    ccall((:sfShader_setVec2Uniform, libcimgui), Cvoid, (Ptr{sfShader}, Ptr{Cchar}, sfGlslVec2), shader, name, vector)
end

function sfShader_setVec3Uniform(shader, name, vector)
    ccall((:sfShader_setVec3Uniform, libcimgui), Cvoid, (Ptr{sfShader}, Ptr{Cchar}, sfGlslVec3), shader, name, vector)
end

function sfShader_setVec4Uniform(shader, name, vector)
    ccall((:sfShader_setVec4Uniform, libcimgui), Cvoid, (Ptr{sfShader}, Ptr{Cchar}, sfGlslVec4), shader, name, vector)
end

function sfShader_setColorUniform(shader, name, color)
    ccall((:sfShader_setColorUniform, libcimgui), Cvoid, (Ptr{sfShader}, Ptr{Cchar}, sfColor), shader, name, color)
end

function sfShader_setIntUniform(shader, name, x)
    ccall((:sfShader_setIntUniform, libcimgui), Cvoid, (Ptr{sfShader}, Ptr{Cchar}, Cint), shader, name, x)
end

function sfShader_setIvec2Uniform(shader, name, vector)
    ccall((:sfShader_setIvec2Uniform, libcimgui), Cvoid, (Ptr{sfShader}, Ptr{Cchar}, sfGlslIvec2), shader, name, vector)
end

function sfShader_setIvec3Uniform(shader, name, vector)
    ccall((:sfShader_setIvec3Uniform, libcimgui), Cvoid, (Ptr{sfShader}, Ptr{Cchar}, sfGlslIvec3), shader, name, vector)
end

function sfShader_setIvec4Uniform(shader, name, vector)
    ccall((:sfShader_setIvec4Uniform, libcimgui), Cvoid, (Ptr{sfShader}, Ptr{Cchar}, sfGlslIvec4), shader, name, vector)
end

function sfShader_setIntColorUniform(shader, name, color)
    ccall((:sfShader_setIntColorUniform, libcimgui), Cvoid, (Ptr{sfShader}, Ptr{Cchar}, sfColor), shader, name, color)
end

function sfShader_setBoolUniform(shader, name, x)
    ccall((:sfShader_setBoolUniform, libcimgui), Cvoid, (Ptr{sfShader}, Ptr{Cchar}, sfBool), shader, name, x)
end

function sfShader_setBvec2Uniform(shader, name, vector)
    ccall((:sfShader_setBvec2Uniform, libcimgui), Cvoid, (Ptr{sfShader}, Ptr{Cchar}, sfGlslBvec2), shader, name, vector)
end

function sfShader_setBvec3Uniform(shader, name, vector)
    ccall((:sfShader_setBvec3Uniform, libcimgui), Cvoid, (Ptr{sfShader}, Ptr{Cchar}, sfGlslBvec3), shader, name, vector)
end

function sfShader_setBvec4Uniform(shader, name, vector)
    ccall((:sfShader_setBvec4Uniform, libcimgui), Cvoid, (Ptr{sfShader}, Ptr{Cchar}, sfGlslBvec4), shader, name, vector)
end

function sfShader_setMat3Uniform(shader, name, matrix)
    ccall((:sfShader_setMat3Uniform, libcimgui), Cvoid, (Ptr{sfShader}, Ptr{Cchar}, Ptr{sfGlslMat3}), shader, name, matrix)
end

function sfShader_setMat4Uniform(shader, name, matrix)
    ccall((:sfShader_setMat4Uniform, libcimgui), Cvoid, (Ptr{sfShader}, Ptr{Cchar}, Ptr{sfGlslMat4}), shader, name, matrix)
end

function sfShader_setTextureUniform(shader, name, texture)
    ccall((:sfShader_setTextureUniform, libcimgui), Cvoid, (Ptr{sfShader}, Ptr{Cchar}, Ptr{sfTexture}), shader, name, texture)
end

function sfShader_setCurrentTextureUniform(shader, name)
    ccall((:sfShader_setCurrentTextureUniform, libcimgui), Cvoid, (Ptr{sfShader}, Ptr{Cchar}), shader, name)
end

function sfShader_setFloatUniformArray(shader, name, scalarArray, length)
    ccall((:sfShader_setFloatUniformArray, libcimgui), Cvoid, (Ptr{sfShader}, Ptr{Cchar}, Ptr{Cfloat}, Csize_t), shader, name, scalarArray, length)
end

function sfShader_setVec2UniformArray(shader, name, vectorArray, length)
    ccall((:sfShader_setVec2UniformArray, libcimgui), Cvoid, (Ptr{sfShader}, Ptr{Cchar}, Ptr{sfGlslVec2}, Csize_t), shader, name, vectorArray, length)
end

function sfShader_setVec3UniformArray(shader, name, vectorArray, length)
    ccall((:sfShader_setVec3UniformArray, libcimgui), Cvoid, (Ptr{sfShader}, Ptr{Cchar}, Ptr{sfGlslVec3}, Csize_t), shader, name, vectorArray, length)
end

function sfShader_setVec4UniformArray(shader, name, vectorArray, length)
    ccall((:sfShader_setVec4UniformArray, libcimgui), Cvoid, (Ptr{sfShader}, Ptr{Cchar}, Ptr{sfGlslVec4}, Csize_t), shader, name, vectorArray, length)
end

function sfShader_setMat3UniformArray(shader, name, matrixArray, length)
    ccall((:sfShader_setMat3UniformArray, libcimgui), Cvoid, (Ptr{sfShader}, Ptr{Cchar}, Ptr{sfGlslMat3}, Csize_t), shader, name, matrixArray, length)
end

function sfShader_setMat4UniformArray(shader, name, matrixArray, length)
    ccall((:sfShader_setMat4UniformArray, libcimgui), Cvoid, (Ptr{sfShader}, Ptr{Cchar}, Ptr{sfGlslMat4}, Csize_t), shader, name, matrixArray, length)
end

function sfShader_setFloatParameter(shader, name, x)
    ccall((:sfShader_setFloatParameter, libcimgui), Cvoid, (Ptr{sfShader}, Ptr{Cchar}, Cfloat), shader, name, x)
end

function sfShader_setFloat2Parameter(shader, name, x, y)
    ccall((:sfShader_setFloat2Parameter, libcimgui), Cvoid, (Ptr{sfShader}, Ptr{Cchar}, Cfloat, Cfloat), shader, name, x, y)
end

function sfShader_setFloat3Parameter(shader, name, x, y, z)
    ccall((:sfShader_setFloat3Parameter, libcimgui), Cvoid, (Ptr{sfShader}, Ptr{Cchar}, Cfloat, Cfloat, Cfloat), shader, name, x, y, z)
end

function sfShader_setFloat4Parameter(shader, name, x, y, z, w)
    ccall((:sfShader_setFloat4Parameter, libcimgui), Cvoid, (Ptr{sfShader}, Ptr{Cchar}, Cfloat, Cfloat, Cfloat, Cfloat), shader, name, x, y, z, w)
end

function sfShader_setVector2Parameter(shader, name, vector)
    ccall((:sfShader_setVector2Parameter, libcimgui), Cvoid, (Ptr{sfShader}, Ptr{Cchar}, sfVector2f), shader, name, vector)
end

function sfShader_setVector3Parameter(shader, name, vector)
    ccall((:sfShader_setVector3Parameter, libcimgui), Cvoid, (Ptr{sfShader}, Ptr{Cchar}, sfVector3f), shader, name, vector)
end

function sfShader_setColorParameter(shader, name, color)
    ccall((:sfShader_setColorParameter, libcimgui), Cvoid, (Ptr{sfShader}, Ptr{Cchar}, sfColor), shader, name, color)
end

function sfShader_setTransformParameter(shader, name, transform)
    ccall((:sfShader_setTransformParameter, libcimgui), Cvoid, (Ptr{sfShader}, Ptr{Cchar}, sfTransform), shader, name, transform)
end

function sfShader_setTextureParameter(shader, name, texture)
    ccall((:sfShader_setTextureParameter, libcimgui), Cvoid, (Ptr{sfShader}, Ptr{Cchar}, Ptr{sfTexture}), shader, name, texture)
end

function sfShader_setCurrentTextureParameter(shader, name)
    ccall((:sfShader_setCurrentTextureParameter, libcimgui), Cvoid, (Ptr{sfShader}, Ptr{Cchar}), shader, name)
end

function sfShader_getNativeHandle(shader)
    ccall((:sfShader_getNativeHandle, libcimgui), Cuint, (Ptr{sfShader},), shader)
end

function sfShader_bind(shader)
    ccall((:sfShader_bind, libcimgui), Cvoid, (Ptr{sfShader},), shader)
end

function sfShader_isAvailable()
    ccall((:sfShader_isAvailable, libcimgui), sfBool, ())
end

function sfShader_isGeometryAvailable()
    ccall((:sfShader_isGeometryAvailable, libcimgui), sfBool, ())
end

# C code:
# typedef size_t ( * sfShapeGetPointCountCallback ) ( void * )
const sfShapeGetPointCountCallback = Ptr{Cvoid}

# C code:
# typedef sfVector2f ( * sfShapeGetPointCallback ) ( size_t , void * )
const sfShapeGetPointCallback = Ptr{Cvoid}

function sfShape_create(getPointCount, getPoint, userData)
    ccall((:sfShape_create, libcimgui), Ptr{sfShape}, (sfShapeGetPointCountCallback, sfShapeGetPointCallback, Ptr{Cvoid}), getPointCount, getPoint, userData)
end

function sfShape_destroy(shape)
    ccall((:sfShape_destroy, libcimgui), Cvoid, (Ptr{sfShape},), shape)
end

function sfShape_setPosition(shape, position)
    ccall((:sfShape_setPosition, libcimgui), Cvoid, (Ptr{sfShape}, sfVector2f), shape, position)
end

function sfShape_setRotation(shape, angle)
    ccall((:sfShape_setRotation, libcimgui), Cvoid, (Ptr{sfShape}, Cfloat), shape, angle)
end

function sfShape_setScale(shape, scale)
    ccall((:sfShape_setScale, libcimgui), Cvoid, (Ptr{sfShape}, sfVector2f), shape, scale)
end

function sfShape_setOrigin(shape, origin)
    ccall((:sfShape_setOrigin, libcimgui), Cvoid, (Ptr{sfShape}, sfVector2f), shape, origin)
end

function sfShape_getPosition(shape)
    ccall((:sfShape_getPosition, libcimgui), sfVector2f, (Ptr{sfShape},), shape)
end

function sfShape_getRotation(shape)
    ccall((:sfShape_getRotation, libcimgui), Cfloat, (Ptr{sfShape},), shape)
end

function sfShape_getScale(shape)
    ccall((:sfShape_getScale, libcimgui), sfVector2f, (Ptr{sfShape},), shape)
end

function sfShape_getOrigin(shape)
    ccall((:sfShape_getOrigin, libcimgui), sfVector2f, (Ptr{sfShape},), shape)
end

function sfShape_move(shape, offset)
    ccall((:sfShape_move, libcimgui), Cvoid, (Ptr{sfShape}, sfVector2f), shape, offset)
end

function sfShape_rotate(shape, angle)
    ccall((:sfShape_rotate, libcimgui), Cvoid, (Ptr{sfShape}, Cfloat), shape, angle)
end

function sfShape_scale(shape, factors)
    ccall((:sfShape_scale, libcimgui), Cvoid, (Ptr{sfShape}, sfVector2f), shape, factors)
end

function sfShape_getTransform(shape)
    ccall((:sfShape_getTransform, libcimgui), sfTransform, (Ptr{sfShape},), shape)
end

function sfShape_getInverseTransform(shape)
    ccall((:sfShape_getInverseTransform, libcimgui), sfTransform, (Ptr{sfShape},), shape)
end

function sfShape_setTexture(shape, texture, resetRect)
    ccall((:sfShape_setTexture, libcimgui), Cvoid, (Ptr{sfShape}, Ptr{sfTexture}, sfBool), shape, texture, resetRect)
end

function sfShape_setTextureRect(shape, rect)
    ccall((:sfShape_setTextureRect, libcimgui), Cvoid, (Ptr{sfShape}, sfIntRect), shape, rect)
end

function sfShape_setFillColor(shape, color)
    ccall((:sfShape_setFillColor, libcimgui), Cvoid, (Ptr{sfShape}, sfColor), shape, color)
end

function sfShape_setOutlineColor(shape, color)
    ccall((:sfShape_setOutlineColor, libcimgui), Cvoid, (Ptr{sfShape}, sfColor), shape, color)
end

function sfShape_setOutlineThickness(shape, thickness)
    ccall((:sfShape_setOutlineThickness, libcimgui), Cvoid, (Ptr{sfShape}, Cfloat), shape, thickness)
end

function sfShape_getTexture(shape)
    ccall((:sfShape_getTexture, libcimgui), Ptr{sfTexture}, (Ptr{sfShape},), shape)
end

function sfShape_getTextureRect(shape)
    ccall((:sfShape_getTextureRect, libcimgui), sfIntRect, (Ptr{sfShape},), shape)
end

function sfShape_getFillColor(shape)
    ccall((:sfShape_getFillColor, libcimgui), sfColor, (Ptr{sfShape},), shape)
end

function sfShape_getOutlineColor(shape)
    ccall((:sfShape_getOutlineColor, libcimgui), sfColor, (Ptr{sfShape},), shape)
end

function sfShape_getOutlineThickness(shape)
    ccall((:sfShape_getOutlineThickness, libcimgui), Cfloat, (Ptr{sfShape},), shape)
end

function sfShape_getPointCount(shape)
    ccall((:sfShape_getPointCount, libcimgui), Csize_t, (Ptr{sfShape},), shape)
end

function sfShape_getPoint(shape, index)
    ccall((:sfShape_getPoint, libcimgui), sfVector2f, (Ptr{sfShape}, Csize_t), shape, index)
end

function sfShape_getLocalBounds(shape)
    ccall((:sfShape_getLocalBounds, libcimgui), sfFloatRect, (Ptr{sfShape},), shape)
end

function sfShape_getGlobalBounds(shape)
    ccall((:sfShape_getGlobalBounds, libcimgui), sfFloatRect, (Ptr{sfShape},), shape)
end

function sfShape_update(shape)
    ccall((:sfShape_update, libcimgui), Cvoid, (Ptr{sfShape},), shape)
end

function sfSprite_create()
    ccall((:sfSprite_create, libcimgui), Ptr{sfSprite}, ())
end

function sfSprite_copy(sprite)
    ccall((:sfSprite_copy, libcimgui), Ptr{sfSprite}, (Ptr{sfSprite},), sprite)
end

function sfSprite_destroy(sprite)
    ccall((:sfSprite_destroy, libcimgui), Cvoid, (Ptr{sfSprite},), sprite)
end

function sfSprite_setPosition(sprite, position)
    ccall((:sfSprite_setPosition, libcimgui), Cvoid, (Ptr{sfSprite}, sfVector2f), sprite, position)
end

function sfSprite_setRotation(sprite, angle)
    ccall((:sfSprite_setRotation, libcimgui), Cvoid, (Ptr{sfSprite}, Cfloat), sprite, angle)
end

function sfSprite_setScale(sprite, scale)
    ccall((:sfSprite_setScale, libcimgui), Cvoid, (Ptr{sfSprite}, sfVector2f), sprite, scale)
end

function sfSprite_setOrigin(sprite, origin)
    ccall((:sfSprite_setOrigin, libcimgui), Cvoid, (Ptr{sfSprite}, sfVector2f), sprite, origin)
end

function sfSprite_getPosition(sprite)
    ccall((:sfSprite_getPosition, libcimgui), sfVector2f, (Ptr{sfSprite},), sprite)
end

function sfSprite_getRotation(sprite)
    ccall((:sfSprite_getRotation, libcimgui), Cfloat, (Ptr{sfSprite},), sprite)
end

function sfSprite_getScale(sprite)
    ccall((:sfSprite_getScale, libcimgui), sfVector2f, (Ptr{sfSprite},), sprite)
end

function sfSprite_getOrigin(sprite)
    ccall((:sfSprite_getOrigin, libcimgui), sfVector2f, (Ptr{sfSprite},), sprite)
end

function sfSprite_move(sprite, offset)
    ccall((:sfSprite_move, libcimgui), Cvoid, (Ptr{sfSprite}, sfVector2f), sprite, offset)
end

function sfSprite_rotate(sprite, angle)
    ccall((:sfSprite_rotate, libcimgui), Cvoid, (Ptr{sfSprite}, Cfloat), sprite, angle)
end

function sfSprite_scale(sprite, factors)
    ccall((:sfSprite_scale, libcimgui), Cvoid, (Ptr{sfSprite}, sfVector2f), sprite, factors)
end

function sfSprite_getTransform(sprite)
    ccall((:sfSprite_getTransform, libcimgui), sfTransform, (Ptr{sfSprite},), sprite)
end

function sfSprite_getInverseTransform(sprite)
    ccall((:sfSprite_getInverseTransform, libcimgui), sfTransform, (Ptr{sfSprite},), sprite)
end

function sfSprite_setTexture(sprite, texture, resetRect)
    ccall((:sfSprite_setTexture, libcimgui), Cvoid, (Ptr{sfSprite}, Ptr{sfTexture}, sfBool), sprite, texture, resetRect)
end

function sfSprite_setTextureRect(sprite, rectangle)
    ccall((:sfSprite_setTextureRect, libcimgui), Cvoid, (Ptr{sfSprite}, sfIntRect), sprite, rectangle)
end

function sfSprite_setColor(sprite, color)
    ccall((:sfSprite_setColor, libcimgui), Cvoid, (Ptr{sfSprite}, sfColor), sprite, color)
end

function sfSprite_getTexture(sprite)
    ccall((:sfSprite_getTexture, libcimgui), Ptr{sfTexture}, (Ptr{sfSprite},), sprite)
end

function sfSprite_getTextureRect(sprite)
    ccall((:sfSprite_getTextureRect, libcimgui), sfIntRect, (Ptr{sfSprite},), sprite)
end

function sfSprite_getColor(sprite)
    ccall((:sfSprite_getColor, libcimgui), sfColor, (Ptr{sfSprite},), sprite)
end

function sfSprite_getLocalBounds(sprite)
    ccall((:sfSprite_getLocalBounds, libcimgui), sfFloatRect, (Ptr{sfSprite},), sprite)
end

function sfSprite_getGlobalBounds(sprite)
    ccall((:sfSprite_getGlobalBounds, libcimgui), sfFloatRect, (Ptr{sfSprite},), sprite)
end

@cenum sfTextStyle::UInt32 begin
    sfTextRegular = 0
    sfTextBold = 1
    sfTextItalic = 2
    sfTextUnderlined = 4
    sfTextStrikeThrough = 8
end

function sfText_create()
    ccall((:sfText_create, libcimgui), Ptr{sfText}, ())
end

function sfText_copy(text)
    ccall((:sfText_copy, libcimgui), Ptr{sfText}, (Ptr{sfText},), text)
end

function sfText_destroy(text)
    ccall((:sfText_destroy, libcimgui), Cvoid, (Ptr{sfText},), text)
end

function sfText_setPosition(text, position)
    ccall((:sfText_setPosition, libcimgui), Cvoid, (Ptr{sfText}, sfVector2f), text, position)
end

function sfText_setRotation(text, angle)
    ccall((:sfText_setRotation, libcimgui), Cvoid, (Ptr{sfText}, Cfloat), text, angle)
end

function sfText_setScale(text, scale)
    ccall((:sfText_setScale, libcimgui), Cvoid, (Ptr{sfText}, sfVector2f), text, scale)
end

function sfText_setOrigin(text, origin)
    ccall((:sfText_setOrigin, libcimgui), Cvoid, (Ptr{sfText}, sfVector2f), text, origin)
end

function sfText_getPosition(text)
    ccall((:sfText_getPosition, libcimgui), sfVector2f, (Ptr{sfText},), text)
end

function sfText_getRotation(text)
    ccall((:sfText_getRotation, libcimgui), Cfloat, (Ptr{sfText},), text)
end

function sfText_getScale(text)
    ccall((:sfText_getScale, libcimgui), sfVector2f, (Ptr{sfText},), text)
end

function sfText_getOrigin(text)
    ccall((:sfText_getOrigin, libcimgui), sfVector2f, (Ptr{sfText},), text)
end

function sfText_move(text, offset)
    ccall((:sfText_move, libcimgui), Cvoid, (Ptr{sfText}, sfVector2f), text, offset)
end

function sfText_rotate(text, angle)
    ccall((:sfText_rotate, libcimgui), Cvoid, (Ptr{sfText}, Cfloat), text, angle)
end

function sfText_scale(text, factors)
    ccall((:sfText_scale, libcimgui), Cvoid, (Ptr{sfText}, sfVector2f), text, factors)
end

function sfText_getTransform(text)
    ccall((:sfText_getTransform, libcimgui), sfTransform, (Ptr{sfText},), text)
end

function sfText_getInverseTransform(text)
    ccall((:sfText_getInverseTransform, libcimgui), sfTransform, (Ptr{sfText},), text)
end

function sfText_setString(text, string)
    ccall((:sfText_setString, libcimgui), Cvoid, (Ptr{sfText}, Ptr{Cchar}), text, string)
end

function sfText_setUnicodeString(text, string)
    ccall((:sfText_setUnicodeString, libcimgui), Cvoid, (Ptr{sfText}, Ptr{sfUint32}), text, string)
end

function sfText_setFont(text, font)
    ccall((:sfText_setFont, libcimgui), Cvoid, (Ptr{sfText}, Ptr{sfFont}), text, font)
end

function sfText_setCharacterSize(text, size)
    ccall((:sfText_setCharacterSize, libcimgui), Cvoid, (Ptr{sfText}, Cuint), text, size)
end

function sfText_setLineSpacing(text, spacingFactor)
    ccall((:sfText_setLineSpacing, libcimgui), Cvoid, (Ptr{sfText}, Cfloat), text, spacingFactor)
end

function sfText_setLetterSpacing(text, spacingFactor)
    ccall((:sfText_setLetterSpacing, libcimgui), Cvoid, (Ptr{sfText}, Cfloat), text, spacingFactor)
end

function sfText_setStyle(text, style)
    ccall((:sfText_setStyle, libcimgui), Cvoid, (Ptr{sfText}, sfUint32), text, style)
end

function sfText_setColor(text, color)
    ccall((:sfText_setColor, libcimgui), Cvoid, (Ptr{sfText}, sfColor), text, color)
end

function sfText_setFillColor(text, color)
    ccall((:sfText_setFillColor, libcimgui), Cvoid, (Ptr{sfText}, sfColor), text, color)
end

function sfText_setOutlineColor(text, color)
    ccall((:sfText_setOutlineColor, libcimgui), Cvoid, (Ptr{sfText}, sfColor), text, color)
end

function sfText_setOutlineThickness(text, thickness)
    ccall((:sfText_setOutlineThickness, libcimgui), Cvoid, (Ptr{sfText}, Cfloat), text, thickness)
end

function sfText_getString(text)
    ccall((:sfText_getString, libcimgui), Ptr{Cchar}, (Ptr{sfText},), text)
end

function sfText_getUnicodeString(text)
    ccall((:sfText_getUnicodeString, libcimgui), Ptr{sfUint32}, (Ptr{sfText},), text)
end

function sfText_getFont(text)
    ccall((:sfText_getFont, libcimgui), Ptr{sfFont}, (Ptr{sfText},), text)
end

function sfText_getCharacterSize(text)
    ccall((:sfText_getCharacterSize, libcimgui), Cuint, (Ptr{sfText},), text)
end

function sfText_getLetterSpacing(text)
    ccall((:sfText_getLetterSpacing, libcimgui), Cfloat, (Ptr{sfText},), text)
end

function sfText_getLineSpacing(text)
    ccall((:sfText_getLineSpacing, libcimgui), Cfloat, (Ptr{sfText},), text)
end

function sfText_getStyle(text)
    ccall((:sfText_getStyle, libcimgui), sfUint32, (Ptr{sfText},), text)
end

function sfText_getColor(text)
    ccall((:sfText_getColor, libcimgui), sfColor, (Ptr{sfText},), text)
end

function sfText_getFillColor(text)
    ccall((:sfText_getFillColor, libcimgui), sfColor, (Ptr{sfText},), text)
end

function sfText_getOutlineColor(text)
    ccall((:sfText_getOutlineColor, libcimgui), sfColor, (Ptr{sfText},), text)
end

function sfText_getOutlineThickness(text)
    ccall((:sfText_getOutlineThickness, libcimgui), Cfloat, (Ptr{sfText},), text)
end

function sfText_findCharacterPos(text, index)
    ccall((:sfText_findCharacterPos, libcimgui), sfVector2f, (Ptr{sfText}, Csize_t), text, index)
end

function sfText_getLocalBounds(text)
    ccall((:sfText_getLocalBounds, libcimgui), sfFloatRect, (Ptr{sfText},), text)
end

function sfText_getGlobalBounds(text)
    ccall((:sfText_getGlobalBounds, libcimgui), sfFloatRect, (Ptr{sfText},), text)
end

function sfTexture_create(width, height)
    ccall((:sfTexture_create, libcimgui), Ptr{sfTexture}, (Cuint, Cuint), width, height)
end

function sfTexture_createFromFile(filename, area)
    ccall((:sfTexture_createFromFile, libcimgui), Ptr{sfTexture}, (Ptr{Cchar}, Ptr{sfIntRect}), filename, area)
end

function sfTexture_createFromMemory(data, sizeInBytes, area)
    ccall((:sfTexture_createFromMemory, libcimgui), Ptr{sfTexture}, (Ptr{Cvoid}, Csize_t, Ptr{sfIntRect}), data, sizeInBytes, area)
end

function sfTexture_createFromStream(stream, area)
    ccall((:sfTexture_createFromStream, libcimgui), Ptr{sfTexture}, (Ptr{sfInputStream}, Ptr{sfIntRect}), stream, area)
end

function sfTexture_createFromImage(image, area)
    ccall((:sfTexture_createFromImage, libcimgui), Ptr{sfTexture}, (Ptr{sfImage}, Ptr{sfIntRect}), image, area)
end

function sfTexture_copy(texture)
    ccall((:sfTexture_copy, libcimgui), Ptr{sfTexture}, (Ptr{sfTexture},), texture)
end

function sfTexture_destroy(texture)
    ccall((:sfTexture_destroy, libcimgui), Cvoid, (Ptr{sfTexture},), texture)
end

function sfTexture_getSize(texture)
    ccall((:sfTexture_getSize, libcimgui), sfVector2u, (Ptr{sfTexture},), texture)
end

function sfTexture_copyToImage(texture)
    ccall((:sfTexture_copyToImage, libcimgui), Ptr{sfImage}, (Ptr{sfTexture},), texture)
end

function sfTexture_updateFromPixels(texture, pixels, width, height, x, y)
    ccall((:sfTexture_updateFromPixels, libcimgui), Cvoid, (Ptr{sfTexture}, Ptr{sfUint8}, Cuint, Cuint, Cuint, Cuint), texture, pixels, width, height, x, y)
end

function sfTexture_updateFromTexture(destination, source, x, y)
    ccall((:sfTexture_updateFromTexture, libcimgui), Cvoid, (Ptr{sfTexture}, Ptr{sfTexture}, Cuint, Cuint), destination, source, x, y)
end

function sfTexture_updateFromImage(texture, image, x, y)
    ccall((:sfTexture_updateFromImage, libcimgui), Cvoid, (Ptr{sfTexture}, Ptr{sfImage}, Cuint, Cuint), texture, image, x, y)
end

function sfTexture_updateFromWindow(texture, window, x, y)
    ccall((:sfTexture_updateFromWindow, libcimgui), Cvoid, (Ptr{sfTexture}, Ptr{sfWindow}, Cuint, Cuint), texture, window, x, y)
end

function sfTexture_updateFromRenderWindow(texture, renderWindow, x, y)
    ccall((:sfTexture_updateFromRenderWindow, libcimgui), Cvoid, (Ptr{sfTexture}, Ptr{sfRenderWindow}, Cuint, Cuint), texture, renderWindow, x, y)
end

function sfTexture_setSmooth(texture, smooth)
    ccall((:sfTexture_setSmooth, libcimgui), Cvoid, (Ptr{sfTexture}, sfBool), texture, smooth)
end

function sfTexture_isSmooth(texture)
    ccall((:sfTexture_isSmooth, libcimgui), sfBool, (Ptr{sfTexture},), texture)
end

function sfTexture_setSrgb(texture, sRgb)
    ccall((:sfTexture_setSrgb, libcimgui), Cvoid, (Ptr{sfTexture}, sfBool), texture, sRgb)
end

function sfTexture_isSrgb(texture)
    ccall((:sfTexture_isSrgb, libcimgui), sfBool, (Ptr{sfTexture},), texture)
end

function sfTexture_setRepeated(texture, repeated)
    ccall((:sfTexture_setRepeated, libcimgui), Cvoid, (Ptr{sfTexture}, sfBool), texture, repeated)
end

function sfTexture_isRepeated(texture)
    ccall((:sfTexture_isRepeated, libcimgui), sfBool, (Ptr{sfTexture},), texture)
end

function sfTexture_generateMipmap(texture)
    ccall((:sfTexture_generateMipmap, libcimgui), sfBool, (Ptr{sfTexture},), texture)
end

function sfTexture_swap(left, right)
    ccall((:sfTexture_swap, libcimgui), Cvoid, (Ptr{sfTexture}, Ptr{sfTexture}), left, right)
end

function sfTexture_getNativeHandle(texture)
    ccall((:sfTexture_getNativeHandle, libcimgui), Cuint, (Ptr{sfTexture},), texture)
end

function sfTexture_bind(texture)
    ccall((:sfTexture_bind, libcimgui), Cvoid, (Ptr{sfTexture},), texture)
end

# no prototype is found for this function at Texture.h:362:33, please use with caution
function sfTexture_getMaximumSize()
    ccall((:sfTexture_getMaximumSize, libcimgui), Cuint, ())
end

function sfTransformable_create()
    ccall((:sfTransformable_create, libcimgui), Ptr{sfTransformable}, ())
end

function sfTransformable_copy(transformable)
    ccall((:sfTransformable_copy, libcimgui), Ptr{sfTransformable}, (Ptr{sfTransformable},), transformable)
end

function sfTransformable_destroy(transformable)
    ccall((:sfTransformable_destroy, libcimgui), Cvoid, (Ptr{sfTransformable},), transformable)
end

function sfTransformable_setPosition(transformable, position)
    ccall((:sfTransformable_setPosition, libcimgui), Cvoid, (Ptr{sfTransformable}, sfVector2f), transformable, position)
end

function sfTransformable_setRotation(transformable, angle)
    ccall((:sfTransformable_setRotation, libcimgui), Cvoid, (Ptr{sfTransformable}, Cfloat), transformable, angle)
end

function sfTransformable_setScale(transformable, scale)
    ccall((:sfTransformable_setScale, libcimgui), Cvoid, (Ptr{sfTransformable}, sfVector2f), transformable, scale)
end

function sfTransformable_setOrigin(transformable, origin)
    ccall((:sfTransformable_setOrigin, libcimgui), Cvoid, (Ptr{sfTransformable}, sfVector2f), transformable, origin)
end

function sfTransformable_getPosition(transformable)
    ccall((:sfTransformable_getPosition, libcimgui), sfVector2f, (Ptr{sfTransformable},), transformable)
end

function sfTransformable_getRotation(transformable)
    ccall((:sfTransformable_getRotation, libcimgui), Cfloat, (Ptr{sfTransformable},), transformable)
end

function sfTransformable_getScale(transformable)
    ccall((:sfTransformable_getScale, libcimgui), sfVector2f, (Ptr{sfTransformable},), transformable)
end

function sfTransformable_getOrigin(transformable)
    ccall((:sfTransformable_getOrigin, libcimgui), sfVector2f, (Ptr{sfTransformable},), transformable)
end

function sfTransformable_move(transformable, offset)
    ccall((:sfTransformable_move, libcimgui), Cvoid, (Ptr{sfTransformable}, sfVector2f), transformable, offset)
end

function sfTransformable_rotate(transformable, angle)
    ccall((:sfTransformable_rotate, libcimgui), Cvoid, (Ptr{sfTransformable}, Cfloat), transformable, angle)
end

function sfTransformable_scale(transformable, factors)
    ccall((:sfTransformable_scale, libcimgui), Cvoid, (Ptr{sfTransformable}, sfVector2f), transformable, factors)
end

function sfTransformable_getTransform(transformable)
    ccall((:sfTransformable_getTransform, libcimgui), sfTransform, (Ptr{sfTransformable},), transformable)
end

function sfTransformable_getInverseTransform(transformable)
    ccall((:sfTransformable_getInverseTransform, libcimgui), sfTransform, (Ptr{sfTransformable},), transformable)
end

function sfVertexArray_create()
    ccall((:sfVertexArray_create, libcimgui), Ptr{sfVertexArray}, ())
end

function sfVertexArray_copy(vertexArray)
    ccall((:sfVertexArray_copy, libcimgui), Ptr{sfVertexArray}, (Ptr{sfVertexArray},), vertexArray)
end

function sfVertexArray_destroy(vertexArray)
    ccall((:sfVertexArray_destroy, libcimgui), Cvoid, (Ptr{sfVertexArray},), vertexArray)
end

function sfVertexArray_getVertexCount(vertexArray)
    ccall((:sfVertexArray_getVertexCount, libcimgui), Csize_t, (Ptr{sfVertexArray},), vertexArray)
end

function sfVertexArray_getVertex(vertexArray, index)
    ccall((:sfVertexArray_getVertex, libcimgui), Ptr{sfVertex}, (Ptr{sfVertexArray}, Csize_t), vertexArray, index)
end

function sfVertexArray_clear(vertexArray)
    ccall((:sfVertexArray_clear, libcimgui), Cvoid, (Ptr{sfVertexArray},), vertexArray)
end

function sfVertexArray_resize(vertexArray, vertexCount)
    ccall((:sfVertexArray_resize, libcimgui), Cvoid, (Ptr{sfVertexArray}, Csize_t), vertexArray, vertexCount)
end

function sfVertexArray_append(vertexArray, vertex)
    ccall((:sfVertexArray_append, libcimgui), Cvoid, (Ptr{sfVertexArray}, sfVertex), vertexArray, vertex)
end

function sfVertexArray_setPrimitiveType(vertexArray, type)
    ccall((:sfVertexArray_setPrimitiveType, libcimgui), Cvoid, (Ptr{sfVertexArray}, sfPrimitiveType), vertexArray, type)
end

function sfVertexArray_getPrimitiveType(vertexArray)
    ccall((:sfVertexArray_getPrimitiveType, libcimgui), sfPrimitiveType, (Ptr{sfVertexArray},), vertexArray)
end

function sfVertexArray_getBounds(vertexArray)
    ccall((:sfVertexArray_getBounds, libcimgui), sfFloatRect, (Ptr{sfVertexArray},), vertexArray)
end

@cenum sfVertexBufferUsage::UInt32 begin
    sfVertexBufferStream = 0
    sfVertexBufferDynamic = 1
    sfVertexBufferStatic = 2
end

function sfVertexBuffer_create(vertexCount, type, usage)
    ccall((:sfVertexBuffer_create, libcimgui), Ptr{sfVertexBuffer}, (Cuint, sfPrimitiveType, sfVertexBufferUsage), vertexCount, type, usage)
end

function sfVertexBuffer_copy(vertexBuffer)
    ccall((:sfVertexBuffer_copy, libcimgui), Ptr{sfVertexBuffer}, (Ptr{sfVertexBuffer},), vertexBuffer)
end

function sfVertexBuffer_destroy(vertexBuffer)
    ccall((:sfVertexBuffer_destroy, libcimgui), Cvoid, (Ptr{sfVertexBuffer},), vertexBuffer)
end

function sfVertexBuffer_getVertexCount(vertexBuffer)
    ccall((:sfVertexBuffer_getVertexCount, libcimgui), Cuint, (Ptr{sfVertexBuffer},), vertexBuffer)
end

function sfVertexBuffer_update(vertexBuffer, vertices, vertexCount, offset)
    ccall((:sfVertexBuffer_update, libcimgui), sfBool, (Ptr{sfVertexBuffer}, Ptr{sfVertex}, Cuint, Cuint), vertexBuffer, vertices, vertexCount, offset)
end

function sfVertexBuffer_updateFromVertexBuffer(vertexBuffer, other)
    ccall((:sfVertexBuffer_updateFromVertexBuffer, libcimgui), sfBool, (Ptr{sfVertexBuffer}, Ptr{sfVertexBuffer}), vertexBuffer, other)
end

function sfVertexBuffer_swap(left, right)
    ccall((:sfVertexBuffer_swap, libcimgui), Cvoid, (Ptr{sfVertexBuffer}, Ptr{sfVertexBuffer}), left, right)
end

function sfVertexBuffer_getNativeHandle(vertexBuffer)
    ccall((:sfVertexBuffer_getNativeHandle, libcimgui), Cuint, (Ptr{sfVertexBuffer},), vertexBuffer)
end

function sfVertexBuffer_setPrimitiveType(vertexBuffer, type)
    ccall((:sfVertexBuffer_setPrimitiveType, libcimgui), Cvoid, (Ptr{sfVertexBuffer}, sfPrimitiveType), vertexBuffer, type)
end

function sfVertexBuffer_getPrimitiveType(vertexBuffer)
    ccall((:sfVertexBuffer_getPrimitiveType, libcimgui), sfPrimitiveType, (Ptr{sfVertexBuffer},), vertexBuffer)
end

function sfVertexBuffer_setUsage(vertexBuffer, usage)
    ccall((:sfVertexBuffer_setUsage, libcimgui), Cvoid, (Ptr{sfVertexBuffer}, sfVertexBufferUsage), vertexBuffer, usage)
end

function sfVertexBuffer_getUsage(vertexBuffer)
    ccall((:sfVertexBuffer_getUsage, libcimgui), sfVertexBufferUsage, (Ptr{sfVertexBuffer},), vertexBuffer)
end

function sfVertexBuffer_bind(vertexBuffer)
    ccall((:sfVertexBuffer_bind, libcimgui), Cvoid, (Ptr{sfVertexBuffer},), vertexBuffer)
end

# no prototype is found for this function at VertexBuffer.h:251:27, please use with caution
function sfVertexBuffer_isAvailable()
    ccall((:sfVertexBuffer_isAvailable, libcimgui), sfBool, ())
end

function sfView_create()
    ccall((:sfView_create, libcimgui), Ptr{sfView}, ())
end

function sfView_createFromRect(rectangle)
    ccall((:sfView_createFromRect, libcimgui), Ptr{sfView}, (sfFloatRect,), rectangle)
end

function sfView_copy(view)
    ccall((:sfView_copy, libcimgui), Ptr{sfView}, (Ptr{sfView},), view)
end

function sfView_destroy(view)
    ccall((:sfView_destroy, libcimgui), Cvoid, (Ptr{sfView},), view)
end

function sfView_setCenter(view, center)
    ccall((:sfView_setCenter, libcimgui), Cvoid, (Ptr{sfView}, sfVector2f), view, center)
end

function sfView_setSize(view, size)
    ccall((:sfView_setSize, libcimgui), Cvoid, (Ptr{sfView}, sfVector2f), view, size)
end

function sfView_setRotation(view, angle)
    ccall((:sfView_setRotation, libcimgui), Cvoid, (Ptr{sfView}, Cfloat), view, angle)
end

function sfView_setViewport(view, viewport)
    ccall((:sfView_setViewport, libcimgui), Cvoid, (Ptr{sfView}, sfFloatRect), view, viewport)
end

function sfView_reset(view, rectangle)
    ccall((:sfView_reset, libcimgui), Cvoid, (Ptr{sfView}, sfFloatRect), view, rectangle)
end

function sfView_getCenter(view)
    ccall((:sfView_getCenter, libcimgui), sfVector2f, (Ptr{sfView},), view)
end

function sfView_getSize(view)
    ccall((:sfView_getSize, libcimgui), sfVector2f, (Ptr{sfView},), view)
end

function sfView_getRotation(view)
    ccall((:sfView_getRotation, libcimgui), Cfloat, (Ptr{sfView},), view)
end

function sfView_getViewport(view)
    ccall((:sfView_getViewport, libcimgui), sfFloatRect, (Ptr{sfView},), view)
end

function sfView_move(view, offset)
    ccall((:sfView_move, libcimgui), Cvoid, (Ptr{sfView}, sfVector2f), view, offset)
end

function sfView_rotate(view, angle)
    ccall((:sfView_rotate, libcimgui), Cvoid, (Ptr{sfView}, Cfloat), view, angle)
end

function sfView_zoom(view, factor)
    ccall((:sfView_zoom, libcimgui), Cvoid, (Ptr{sfView}, Cfloat), view, factor)
end

struct sfIpAddress
    address::NTuple{16, Cchar}
end

function sfIpAddress_fromString(address)
    ccall((:sfIpAddress_fromString, libcimgui), sfIpAddress, (Ptr{Cchar},), address)
end

function sfIpAddress_fromBytes(byte0, byte1, byte2, byte3)
    ccall((:sfIpAddress_fromBytes, libcimgui), sfIpAddress, (sfUint8, sfUint8, sfUint8, sfUint8), byte0, byte1, byte2, byte3)
end

function sfIpAddress_fromInteger(address)
    ccall((:sfIpAddress_fromInteger, libcimgui), sfIpAddress, (sfUint32,), address)
end

function sfIpAddress_toString(address, string)
    ccall((:sfIpAddress_toString, libcimgui), Cvoid, (sfIpAddress, Ptr{Cchar}), address, string)
end

function sfIpAddress_toInteger(address)
    ccall((:sfIpAddress_toInteger, libcimgui), sfUint32, (sfIpAddress,), address)
end

function sfIpAddress_getLocalAddress()
    ccall((:sfIpAddress_getLocalAddress, libcimgui), sfIpAddress, ())
end

function sfIpAddress_getPublicAddress(timeout)
    ccall((:sfIpAddress_getPublicAddress, libcimgui), sfIpAddress, (sfTime,), timeout)
end

mutable struct sfFtpDirectoryResponse end

mutable struct sfFtpListingResponse end

mutable struct sfFtpResponse end

mutable struct sfFtp end

mutable struct sfHttpRequest end

mutable struct sfHttpResponse end

mutable struct sfHttp end

mutable struct sfPacket end

mutable struct sfSocketSelector end

mutable struct sfTcpListener end

mutable struct sfTcpSocket end

mutable struct sfUdpSocket end

@cenum sfFtpTransferMode::UInt32 begin
    sfFtpBinary = 0
    sfFtpAscii = 1
    sfFtpEbcdic = 2
end

@cenum sfFtpStatus::UInt32 begin
    sfFtpRestartMarkerReply = 110
    sfFtpServiceReadySoon = 120
    sfFtpDataConnectionAlreadyOpened = 125
    sfFtpOpeningDataConnection = 150
    sfFtpOk = 200
    sfFtpPointlessCommand = 202
    sfFtpSystemStatus = 211
    sfFtpDirectoryStatus = 212
    sfFtpFileStatus = 213
    sfFtpHelpMessage = 214
    sfFtpSystemType = 215
    sfFtpServiceReady = 220
    sfFtpClosingConnection = 221
    sfFtpDataConnectionOpened = 225
    sfFtpClosingDataConnection = 226
    sfFtpEnteringPassiveMode = 227
    sfFtpLoggedIn = 230
    sfFtpFileActionOk = 250
    sfFtpDirectoryOk = 257
    sfFtpNeedPassword = 331
    sfFtpNeedAccountToLogIn = 332
    sfFtpNeedInformation = 350
    sfFtpServiceUnavailable = 421
    sfFtpDataConnectionUnavailable = 425
    sfFtpTransferAborted = 426
    sfFtpFileActionAborted = 450
    sfFtpLocalError = 451
    sfFtpInsufficientStorageSpace = 452
    sfFtpCommandUnknown = 500
    sfFtpParametersUnknown = 501
    sfFtpCommandNotImplemented = 502
    sfFtpBadCommandSequence = 503
    sfFtpParameterNotImplemented = 504
    sfFtpNotLoggedIn = 530
    sfFtpNeedAccountToStore = 532
    sfFtpFileUnavailable = 550
    sfFtpPageTypeUnknown = 551
    sfFtpNotEnoughMemory = 552
    sfFtpFilenameNotAllowed = 553
    sfFtpInvalidResponse = 1000
    sfFtpConnectionFailed = 1001
    sfFtpConnectionClosed = 1002
    sfFtpInvalidFile = 1003
end

function sfFtpListingResponse_destroy(ftpListingResponse)
    ccall((:sfFtpListingResponse_destroy, libcimgui), Cvoid, (Ptr{sfFtpListingResponse},), ftpListingResponse)
end

function sfFtpListingResponse_isOk(ftpListingResponse)
    ccall((:sfFtpListingResponse_isOk, libcimgui), sfBool, (Ptr{sfFtpListingResponse},), ftpListingResponse)
end

function sfFtpListingResponse_getStatus(ftpListingResponse)
    ccall((:sfFtpListingResponse_getStatus, libcimgui), sfFtpStatus, (Ptr{sfFtpListingResponse},), ftpListingResponse)
end

function sfFtpListingResponse_getMessage(ftpListingResponse)
    ccall((:sfFtpListingResponse_getMessage, libcimgui), Ptr{Cchar}, (Ptr{sfFtpListingResponse},), ftpListingResponse)
end

function sfFtpListingResponse_getCount(ftpListingResponse)
    ccall((:sfFtpListingResponse_getCount, libcimgui), Csize_t, (Ptr{sfFtpListingResponse},), ftpListingResponse)
end

function sfFtpListingResponse_getName(ftpListingResponse, index)
    ccall((:sfFtpListingResponse_getName, libcimgui), Ptr{Cchar}, (Ptr{sfFtpListingResponse}, Csize_t), ftpListingResponse, index)
end

function sfFtpDirectoryResponse_destroy(ftpDirectoryResponse)
    ccall((:sfFtpDirectoryResponse_destroy, libcimgui), Cvoid, (Ptr{sfFtpDirectoryResponse},), ftpDirectoryResponse)
end

function sfFtpDirectoryResponse_isOk(ftpDirectoryResponse)
    ccall((:sfFtpDirectoryResponse_isOk, libcimgui), sfBool, (Ptr{sfFtpDirectoryResponse},), ftpDirectoryResponse)
end

function sfFtpDirectoryResponse_getStatus(ftpDirectoryResponse)
    ccall((:sfFtpDirectoryResponse_getStatus, libcimgui), sfFtpStatus, (Ptr{sfFtpDirectoryResponse},), ftpDirectoryResponse)
end

function sfFtpDirectoryResponse_getMessage(ftpDirectoryResponse)
    ccall((:sfFtpDirectoryResponse_getMessage, libcimgui), Ptr{Cchar}, (Ptr{sfFtpDirectoryResponse},), ftpDirectoryResponse)
end

function sfFtpDirectoryResponse_getDirectory(ftpDirectoryResponse)
    ccall((:sfFtpDirectoryResponse_getDirectory, libcimgui), Ptr{Cchar}, (Ptr{sfFtpDirectoryResponse},), ftpDirectoryResponse)
end

function sfFtpResponse_destroy(ftpResponse)
    ccall((:sfFtpResponse_destroy, libcimgui), Cvoid, (Ptr{sfFtpResponse},), ftpResponse)
end

function sfFtpResponse_isOk(ftpResponse)
    ccall((:sfFtpResponse_isOk, libcimgui), sfBool, (Ptr{sfFtpResponse},), ftpResponse)
end

function sfFtpResponse_getStatus(ftpResponse)
    ccall((:sfFtpResponse_getStatus, libcimgui), sfFtpStatus, (Ptr{sfFtpResponse},), ftpResponse)
end

function sfFtpResponse_getMessage(ftpResponse)
    ccall((:sfFtpResponse_getMessage, libcimgui), Ptr{Cchar}, (Ptr{sfFtpResponse},), ftpResponse)
end

function sfFtp_create()
    ccall((:sfFtp_create, libcimgui), Ptr{sfFtp}, ())
end

function sfFtp_destroy(ftp)
    ccall((:sfFtp_destroy, libcimgui), Cvoid, (Ptr{sfFtp},), ftp)
end

function sfFtp_connect(ftp, server, port, timeout)
    ccall((:sfFtp_connect, libcimgui), Ptr{sfFtpResponse}, (Ptr{sfFtp}, sfIpAddress, Cushort, sfTime), ftp, server, port, timeout)
end

function sfFtp_loginAnonymous(ftp)
    ccall((:sfFtp_loginAnonymous, libcimgui), Ptr{sfFtpResponse}, (Ptr{sfFtp},), ftp)
end

function sfFtp_login(ftp, name, password)
    ccall((:sfFtp_login, libcimgui), Ptr{sfFtpResponse}, (Ptr{sfFtp}, Ptr{Cchar}, Ptr{Cchar}), ftp, name, password)
end

function sfFtp_disconnect(ftp)
    ccall((:sfFtp_disconnect, libcimgui), Ptr{sfFtpResponse}, (Ptr{sfFtp},), ftp)
end

function sfFtp_keepAlive(ftp)
    ccall((:sfFtp_keepAlive, libcimgui), Ptr{sfFtpResponse}, (Ptr{sfFtp},), ftp)
end

function sfFtp_getWorkingDirectory(ftp)
    ccall((:sfFtp_getWorkingDirectory, libcimgui), Ptr{sfFtpDirectoryResponse}, (Ptr{sfFtp},), ftp)
end

function sfFtp_getDirectoryListing(ftp, directory)
    ccall((:sfFtp_getDirectoryListing, libcimgui), Ptr{sfFtpListingResponse}, (Ptr{sfFtp}, Ptr{Cchar}), ftp, directory)
end

function sfFtp_changeDirectory(ftp, directory)
    ccall((:sfFtp_changeDirectory, libcimgui), Ptr{sfFtpResponse}, (Ptr{sfFtp}, Ptr{Cchar}), ftp, directory)
end

function sfFtp_parentDirectory(ftp)
    ccall((:sfFtp_parentDirectory, libcimgui), Ptr{sfFtpResponse}, (Ptr{sfFtp},), ftp)
end

function sfFtp_createDirectory(ftp, name)
    ccall((:sfFtp_createDirectory, libcimgui), Ptr{sfFtpResponse}, (Ptr{sfFtp}, Ptr{Cchar}), ftp, name)
end

function sfFtp_deleteDirectory(ftp, name)
    ccall((:sfFtp_deleteDirectory, libcimgui), Ptr{sfFtpResponse}, (Ptr{sfFtp}, Ptr{Cchar}), ftp, name)
end

function sfFtp_renameFile(ftp, file, newName)
    ccall((:sfFtp_renameFile, libcimgui), Ptr{sfFtpResponse}, (Ptr{sfFtp}, Ptr{Cchar}, Ptr{Cchar}), ftp, file, newName)
end

function sfFtp_deleteFile(ftp, name)
    ccall((:sfFtp_deleteFile, libcimgui), Ptr{sfFtpResponse}, (Ptr{sfFtp}, Ptr{Cchar}), ftp, name)
end

function sfFtp_download(ftp, remoteFile, localPath, mode)
    ccall((:sfFtp_download, libcimgui), Ptr{sfFtpResponse}, (Ptr{sfFtp}, Ptr{Cchar}, Ptr{Cchar}, sfFtpTransferMode), ftp, remoteFile, localPath, mode)
end

function sfFtp_upload(ftp, localFile, remotePath, mode, append)
    ccall((:sfFtp_upload, libcimgui), Ptr{sfFtpResponse}, (Ptr{sfFtp}, Ptr{Cchar}, Ptr{Cchar}, sfFtpTransferMode, sfBool), ftp, localFile, remotePath, mode, append)
end

function sfFtp_sendCommand(ftp, command, parameter)
    ccall((:sfFtp_sendCommand, libcimgui), Ptr{sfFtpResponse}, (Ptr{sfFtp}, Ptr{Cchar}, Ptr{Cchar}), ftp, command, parameter)
end

@cenum sfHttpMethod::UInt32 begin
    sfHttpGet = 0
    sfHttpPost = 1
    sfHttpHead = 2
    sfHttpPut = 3
    sfHttpDelete = 4
end

@cenum sfHttpStatus::UInt32 begin
    sfHttpOk = 200
    sfHttpCreated = 201
    sfHttpAccepted = 202
    sfHttpNoContent = 204
    sfHttpResetContent = 205
    sfHttpPartialContent = 206
    sfHttpMultipleChoices = 300
    sfHttpMovedPermanently = 301
    sfHttpMovedTemporarily = 302
    sfHttpNotModified = 304
    sfHttpBadRequest = 400
    sfHttpUnauthorized = 401
    sfHttpForbidden = 403
    sfHttpNotFound = 404
    sfHttpRangeNotSatisfiable = 407
    sfHttpInternalServerError = 500
    sfHttpNotImplemented = 501
    sfHttpBadGateway = 502
    sfHttpServiceNotAvailable = 503
    sfHttpGatewayTimeout = 504
    sfHttpVersionNotSupported = 505
    sfHttpInvalidResponse = 1000
    sfHttpConnectionFailed = 1001
end

function sfHttpRequest_create()
    ccall((:sfHttpRequest_create, libcimgui), Ptr{sfHttpRequest}, ())
end

function sfHttpRequest_destroy(httpRequest)
    ccall((:sfHttpRequest_destroy, libcimgui), Cvoid, (Ptr{sfHttpRequest},), httpRequest)
end

function sfHttpRequest_setField(httpRequest, field, value)
    ccall((:sfHttpRequest_setField, libcimgui), Cvoid, (Ptr{sfHttpRequest}, Ptr{Cchar}, Ptr{Cchar}), httpRequest, field, value)
end

function sfHttpRequest_setMethod(httpRequest, method)
    ccall((:sfHttpRequest_setMethod, libcimgui), Cvoid, (Ptr{sfHttpRequest}, sfHttpMethod), httpRequest, method)
end

function sfHttpRequest_setUri(httpRequest, uri)
    ccall((:sfHttpRequest_setUri, libcimgui), Cvoid, (Ptr{sfHttpRequest}, Ptr{Cchar}), httpRequest, uri)
end

function sfHttpRequest_setHttpVersion(httpRequest, major, minor)
    ccall((:sfHttpRequest_setHttpVersion, libcimgui), Cvoid, (Ptr{sfHttpRequest}, Cuint, Cuint), httpRequest, major, minor)
end

function sfHttpRequest_setBody(httpRequest, body)
    ccall((:sfHttpRequest_setBody, libcimgui), Cvoid, (Ptr{sfHttpRequest}, Ptr{Cchar}), httpRequest, body)
end

function sfHttpResponse_destroy(httpResponse)
    ccall((:sfHttpResponse_destroy, libcimgui), Cvoid, (Ptr{sfHttpResponse},), httpResponse)
end

function sfHttpResponse_getField(httpResponse, field)
    ccall((:sfHttpResponse_getField, libcimgui), Ptr{Cchar}, (Ptr{sfHttpResponse}, Ptr{Cchar}), httpResponse, field)
end

function sfHttpResponse_getStatus(httpResponse)
    ccall((:sfHttpResponse_getStatus, libcimgui), sfHttpStatus, (Ptr{sfHttpResponse},), httpResponse)
end

function sfHttpResponse_getMajorVersion(httpResponse)
    ccall((:sfHttpResponse_getMajorVersion, libcimgui), Cuint, (Ptr{sfHttpResponse},), httpResponse)
end

function sfHttpResponse_getMinorVersion(httpResponse)
    ccall((:sfHttpResponse_getMinorVersion, libcimgui), Cuint, (Ptr{sfHttpResponse},), httpResponse)
end

function sfHttpResponse_getBody(httpResponse)
    ccall((:sfHttpResponse_getBody, libcimgui), Ptr{Cchar}, (Ptr{sfHttpResponse},), httpResponse)
end

function sfHttp_create()
    ccall((:sfHttp_create, libcimgui), Ptr{sfHttp}, ())
end

function sfHttp_destroy(http)
    ccall((:sfHttp_destroy, libcimgui), Cvoid, (Ptr{sfHttp},), http)
end

function sfHttp_setHost(http, host, port)
    ccall((:sfHttp_setHost, libcimgui), Cvoid, (Ptr{sfHttp}, Ptr{Cchar}, Cushort), http, host, port)
end

function sfHttp_sendRequest(http, request, timeout)
    ccall((:sfHttp_sendRequest, libcimgui), Ptr{sfHttpResponse}, (Ptr{sfHttp}, Ptr{sfHttpRequest}, sfTime), http, request, timeout)
end

function sfPacket_create()
    ccall((:sfPacket_create, libcimgui), Ptr{sfPacket}, ())
end

function sfPacket_copy(packet)
    ccall((:sfPacket_copy, libcimgui), Ptr{sfPacket}, (Ptr{sfPacket},), packet)
end

function sfPacket_destroy(packet)
    ccall((:sfPacket_destroy, libcimgui), Cvoid, (Ptr{sfPacket},), packet)
end

function sfPacket_append(packet, data, sizeInBytes)
    ccall((:sfPacket_append, libcimgui), Cvoid, (Ptr{sfPacket}, Ptr{Cvoid}, Csize_t), packet, data, sizeInBytes)
end

function sfPacket_clear(packet)
    ccall((:sfPacket_clear, libcimgui), Cvoid, (Ptr{sfPacket},), packet)
end

function sfPacket_getData(packet)
    ccall((:sfPacket_getData, libcimgui), Ptr{Cvoid}, (Ptr{sfPacket},), packet)
end

function sfPacket_getDataSize(packet)
    ccall((:sfPacket_getDataSize, libcimgui), Csize_t, (Ptr{sfPacket},), packet)
end

function sfPacket_endOfPacket(packet)
    ccall((:sfPacket_endOfPacket, libcimgui), sfBool, (Ptr{sfPacket},), packet)
end

function sfPacket_canRead(packet)
    ccall((:sfPacket_canRead, libcimgui), sfBool, (Ptr{sfPacket},), packet)
end

function sfPacket_readBool(packet)
    ccall((:sfPacket_readBool, libcimgui), sfBool, (Ptr{sfPacket},), packet)
end

function sfPacket_readInt8(packet)
    ccall((:sfPacket_readInt8, libcimgui), sfInt8, (Ptr{sfPacket},), packet)
end

function sfPacket_readUint8(packet)
    ccall((:sfPacket_readUint8, libcimgui), sfUint8, (Ptr{sfPacket},), packet)
end

function sfPacket_readInt16(packet)
    ccall((:sfPacket_readInt16, libcimgui), sfInt16, (Ptr{sfPacket},), packet)
end

function sfPacket_readUint16(packet)
    ccall((:sfPacket_readUint16, libcimgui), sfUint16, (Ptr{sfPacket},), packet)
end

function sfPacket_readInt32(packet)
    ccall((:sfPacket_readInt32, libcimgui), sfInt32, (Ptr{sfPacket},), packet)
end

function sfPacket_readUint32(packet)
    ccall((:sfPacket_readUint32, libcimgui), sfUint32, (Ptr{sfPacket},), packet)
end

function sfPacket_readFloat(packet)
    ccall((:sfPacket_readFloat, libcimgui), Cfloat, (Ptr{sfPacket},), packet)
end

function sfPacket_readDouble(packet)
    ccall((:sfPacket_readDouble, libcimgui), Cdouble, (Ptr{sfPacket},), packet)
end

function sfPacket_readString(packet, string)
    ccall((:sfPacket_readString, libcimgui), Cvoid, (Ptr{sfPacket}, Ptr{Cchar}), packet, string)
end

function sfPacket_readWideString(packet, string)
    ccall((:sfPacket_readWideString, libcimgui), Cvoid, (Ptr{sfPacket}, Ptr{Cwchar_t}), packet, string)
end

function sfPacket_writeBool(packet, arg2)
    ccall((:sfPacket_writeBool, libcimgui), Cvoid, (Ptr{sfPacket}, sfBool), packet, arg2)
end

function sfPacket_writeInt8(packet, arg2)
    ccall((:sfPacket_writeInt8, libcimgui), Cvoid, (Ptr{sfPacket}, sfInt8), packet, arg2)
end

function sfPacket_writeUint8(packet, arg2)
    ccall((:sfPacket_writeUint8, libcimgui), Cvoid, (Ptr{sfPacket}, sfUint8), packet, arg2)
end

function sfPacket_writeInt16(packet, arg2)
    ccall((:sfPacket_writeInt16, libcimgui), Cvoid, (Ptr{sfPacket}, sfInt16), packet, arg2)
end

function sfPacket_writeUint16(packet, arg2)
    ccall((:sfPacket_writeUint16, libcimgui), Cvoid, (Ptr{sfPacket}, sfUint16), packet, arg2)
end

function sfPacket_writeInt32(packet, arg2)
    ccall((:sfPacket_writeInt32, libcimgui), Cvoid, (Ptr{sfPacket}, sfInt32), packet, arg2)
end

function sfPacket_writeUint32(packet, arg2)
    ccall((:sfPacket_writeUint32, libcimgui), Cvoid, (Ptr{sfPacket}, sfUint32), packet, arg2)
end

function sfPacket_writeFloat(packet, arg2)
    ccall((:sfPacket_writeFloat, libcimgui), Cvoid, (Ptr{sfPacket}, Cfloat), packet, arg2)
end

function sfPacket_writeDouble(packet, arg2)
    ccall((:sfPacket_writeDouble, libcimgui), Cvoid, (Ptr{sfPacket}, Cdouble), packet, arg2)
end

function sfPacket_writeString(packet, string)
    ccall((:sfPacket_writeString, libcimgui), Cvoid, (Ptr{sfPacket}, Ptr{Cchar}), packet, string)
end

function sfPacket_writeWideString(packet, string)
    ccall((:sfPacket_writeWideString, libcimgui), Cvoid, (Ptr{sfPacket}, Ptr{Cwchar_t}), packet, string)
end

function sfSocketSelector_create()
    ccall((:sfSocketSelector_create, libcimgui), Ptr{sfSocketSelector}, ())
end

function sfSocketSelector_copy(selector)
    ccall((:sfSocketSelector_copy, libcimgui), Ptr{sfSocketSelector}, (Ptr{sfSocketSelector},), selector)
end

function sfSocketSelector_destroy(selector)
    ccall((:sfSocketSelector_destroy, libcimgui), Cvoid, (Ptr{sfSocketSelector},), selector)
end

function sfSocketSelector_addTcpListener(selector, socket)
    ccall((:sfSocketSelector_addTcpListener, libcimgui), Cvoid, (Ptr{sfSocketSelector}, Ptr{sfTcpListener}), selector, socket)
end

function sfSocketSelector_addTcpSocket(selector, socket)
    ccall((:sfSocketSelector_addTcpSocket, libcimgui), Cvoid, (Ptr{sfSocketSelector}, Ptr{sfTcpSocket}), selector, socket)
end

function sfSocketSelector_addUdpSocket(selector, socket)
    ccall((:sfSocketSelector_addUdpSocket, libcimgui), Cvoid, (Ptr{sfSocketSelector}, Ptr{sfUdpSocket}), selector, socket)
end

function sfSocketSelector_removeTcpListener(selector, socket)
    ccall((:sfSocketSelector_removeTcpListener, libcimgui), Cvoid, (Ptr{sfSocketSelector}, Ptr{sfTcpListener}), selector, socket)
end

function sfSocketSelector_removeTcpSocket(selector, socket)
    ccall((:sfSocketSelector_removeTcpSocket, libcimgui), Cvoid, (Ptr{sfSocketSelector}, Ptr{sfTcpSocket}), selector, socket)
end

function sfSocketSelector_removeUdpSocket(selector, socket)
    ccall((:sfSocketSelector_removeUdpSocket, libcimgui), Cvoid, (Ptr{sfSocketSelector}, Ptr{sfUdpSocket}), selector, socket)
end

function sfSocketSelector_clear(selector)
    ccall((:sfSocketSelector_clear, libcimgui), Cvoid, (Ptr{sfSocketSelector},), selector)
end

function sfSocketSelector_wait(selector, timeout)
    ccall((:sfSocketSelector_wait, libcimgui), sfBool, (Ptr{sfSocketSelector}, sfTime), selector, timeout)
end

function sfSocketSelector_isTcpListenerReady(selector, socket)
    ccall((:sfSocketSelector_isTcpListenerReady, libcimgui), sfBool, (Ptr{sfSocketSelector}, Ptr{sfTcpListener}), selector, socket)
end

function sfSocketSelector_isTcpSocketReady(selector, socket)
    ccall((:sfSocketSelector_isTcpSocketReady, libcimgui), sfBool, (Ptr{sfSocketSelector}, Ptr{sfTcpSocket}), selector, socket)
end

function sfSocketSelector_isUdpSocketReady(selector, socket)
    ccall((:sfSocketSelector_isUdpSocketReady, libcimgui), sfBool, (Ptr{sfSocketSelector}, Ptr{sfUdpSocket}), selector, socket)
end

@cenum sfSocketStatus::UInt32 begin
    sfSocketDone = 0
    sfSocketNotReady = 1
    sfSocketPartial = 2
    sfSocketDisconnected = 3
    sfSocketError = 4
end

function sfTcpListener_create()
    ccall((:sfTcpListener_create, libcimgui), Ptr{sfTcpListener}, ())
end

function sfTcpListener_destroy(listener)
    ccall((:sfTcpListener_destroy, libcimgui), Cvoid, (Ptr{sfTcpListener},), listener)
end

function sfTcpListener_setBlocking(listener, blocking)
    ccall((:sfTcpListener_setBlocking, libcimgui), Cvoid, (Ptr{sfTcpListener}, sfBool), listener, blocking)
end

function sfTcpListener_isBlocking(listener)
    ccall((:sfTcpListener_isBlocking, libcimgui), sfBool, (Ptr{sfTcpListener},), listener)
end

function sfTcpListener_getLocalPort(listener)
    ccall((:sfTcpListener_getLocalPort, libcimgui), Cushort, (Ptr{sfTcpListener},), listener)
end

function sfTcpListener_listen(listener, port, address)
    ccall((:sfTcpListener_listen, libcimgui), sfSocketStatus, (Ptr{sfTcpListener}, Cushort, sfIpAddress), listener, port, address)
end

function sfTcpListener_accept(listener, connected)
    ccall((:sfTcpListener_accept, libcimgui), sfSocketStatus, (Ptr{sfTcpListener}, Ptr{Ptr{sfTcpSocket}}), listener, connected)
end

function sfTcpSocket_create()
    ccall((:sfTcpSocket_create, libcimgui), Ptr{sfTcpSocket}, ())
end

function sfTcpSocket_destroy(socket)
    ccall((:sfTcpSocket_destroy, libcimgui), Cvoid, (Ptr{sfTcpSocket},), socket)
end

function sfTcpSocket_setBlocking(socket, blocking)
    ccall((:sfTcpSocket_setBlocking, libcimgui), Cvoid, (Ptr{sfTcpSocket}, sfBool), socket, blocking)
end

function sfTcpSocket_isBlocking(socket)
    ccall((:sfTcpSocket_isBlocking, libcimgui), sfBool, (Ptr{sfTcpSocket},), socket)
end

function sfTcpSocket_getLocalPort(socket)
    ccall((:sfTcpSocket_getLocalPort, libcimgui), Cushort, (Ptr{sfTcpSocket},), socket)
end

function sfTcpSocket_getRemoteAddress(socket)
    ccall((:sfTcpSocket_getRemoteAddress, libcimgui), sfIpAddress, (Ptr{sfTcpSocket},), socket)
end

function sfTcpSocket_getRemotePort(socket)
    ccall((:sfTcpSocket_getRemotePort, libcimgui), Cushort, (Ptr{sfTcpSocket},), socket)
end

function sfTcpSocket_connect(socket, remoteAddress, remotePort, timeout)
    ccall((:sfTcpSocket_connect, libcimgui), sfSocketStatus, (Ptr{sfTcpSocket}, sfIpAddress, Cushort, sfTime), socket, remoteAddress, remotePort, timeout)
end

function sfTcpSocket_disconnect(socket)
    ccall((:sfTcpSocket_disconnect, libcimgui), Cvoid, (Ptr{sfTcpSocket},), socket)
end

function sfTcpSocket_send(socket, data, size)
    ccall((:sfTcpSocket_send, libcimgui), sfSocketStatus, (Ptr{sfTcpSocket}, Ptr{Cvoid}, Csize_t), socket, data, size)
end

function sfTcpSocket_sendPartial(socket, data, size, sent)
    ccall((:sfTcpSocket_sendPartial, libcimgui), sfSocketStatus, (Ptr{sfTcpSocket}, Ptr{Cvoid}, Csize_t, Ptr{Csize_t}), socket, data, size, sent)
end

function sfTcpSocket_receive(socket, data, size, received)
    ccall((:sfTcpSocket_receive, libcimgui), sfSocketStatus, (Ptr{sfTcpSocket}, Ptr{Cvoid}, Csize_t, Ptr{Csize_t}), socket, data, size, received)
end

function sfTcpSocket_sendPacket(socket, packet)
    ccall((:sfTcpSocket_sendPacket, libcimgui), sfSocketStatus, (Ptr{sfTcpSocket}, Ptr{sfPacket}), socket, packet)
end

function sfTcpSocket_receivePacket(socket, packet)
    ccall((:sfTcpSocket_receivePacket, libcimgui), sfSocketStatus, (Ptr{sfTcpSocket}, Ptr{sfPacket}), socket, packet)
end

function sfUdpSocket_create()
    ccall((:sfUdpSocket_create, libcimgui), Ptr{sfUdpSocket}, ())
end

function sfUdpSocket_destroy(socket)
    ccall((:sfUdpSocket_destroy, libcimgui), Cvoid, (Ptr{sfUdpSocket},), socket)
end

function sfUdpSocket_setBlocking(socket, blocking)
    ccall((:sfUdpSocket_setBlocking, libcimgui), Cvoid, (Ptr{sfUdpSocket}, sfBool), socket, blocking)
end

function sfUdpSocket_isBlocking(socket)
    ccall((:sfUdpSocket_isBlocking, libcimgui), sfBool, (Ptr{sfUdpSocket},), socket)
end

function sfUdpSocket_getLocalPort(socket)
    ccall((:sfUdpSocket_getLocalPort, libcimgui), Cushort, (Ptr{sfUdpSocket},), socket)
end

function sfUdpSocket_bind(socket, port, address)
    ccall((:sfUdpSocket_bind, libcimgui), sfSocketStatus, (Ptr{sfUdpSocket}, Cushort, sfIpAddress), socket, port, address)
end

function sfUdpSocket_unbind(socket)
    ccall((:sfUdpSocket_unbind, libcimgui), Cvoid, (Ptr{sfUdpSocket},), socket)
end

function sfUdpSocket_send(socket, data, size, remoteAddress, remotePort)
    ccall((:sfUdpSocket_send, libcimgui), sfSocketStatus, (Ptr{sfUdpSocket}, Ptr{Cvoid}, Csize_t, sfIpAddress, Cushort), socket, data, size, remoteAddress, remotePort)
end

function sfUdpSocket_receive(socket, data, size, received, remoteAddress, remotePort)
    ccall((:sfUdpSocket_receive, libcimgui), sfSocketStatus, (Ptr{sfUdpSocket}, Ptr{Cvoid}, Csize_t, Ptr{Csize_t}, Ptr{sfIpAddress}, Ptr{Cushort}), socket, data, size, received, remoteAddress, remotePort)
end

function sfUdpSocket_sendPacket(socket, packet, remoteAddress, remotePort)
    ccall((:sfUdpSocket_sendPacket, libcimgui), sfSocketStatus, (Ptr{sfUdpSocket}, Ptr{sfPacket}, sfIpAddress, Cushort), socket, packet, remoteAddress, remotePort)
end

function sfUdpSocket_receivePacket(socket, packet, remoteAddress, remotePort)
    ccall((:sfUdpSocket_receivePacket, libcimgui), sfSocketStatus, (Ptr{sfUdpSocket}, Ptr{sfPacket}, Ptr{sfIpAddress}, Ptr{Cushort}), socket, packet, remoteAddress, remotePort)
end

# no prototype is found for this function at UdpSocket.h:206:32, please use with caution
function sfUdpSocket_maxDatagramSize()
    ccall((:sfUdpSocket_maxDatagramSize, libcimgui), Cuint, ())
end

# exports
const PREFIXES = ["sf"]
foreach(names(@__MODULE__; all=true)) do s
    for prefix in PREFIXES
        if startswith(string(s), prefix)
            @eval export $s
        end
    end
end

end # module
