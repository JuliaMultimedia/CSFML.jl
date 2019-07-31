# Julia wrapper for header: Audio.h
# Automatically generated using Clang.jl

# Julia wrapper for header: Export.h
# Automatically generated using Clang.jl

# Julia wrapper for header: Listener.h
# Automatically generated using Clang.jl


function sfListener_setGlobalVolume(volume)
    ccall((:sfListener_setGlobalVolume, libcsfml_audio), Cvoid, (Cfloat,), volume)
end

function sfListener_getGlobalVolume()
    ccall((:sfListener_getGlobalVolume, libcsfml_audio), Cfloat, ())
end

function sfListener_setPosition(position)
    ccall((:sfListener_setPosition, libcsfml_audio), Cvoid, (sfVector3f,), position)
end

function sfListener_getPosition()
    ccall((:sfListener_getPosition, libcsfml_audio), sfVector3f, ())
end

function sfListener_setDirection(direction)
    ccall((:sfListener_setDirection, libcsfml_audio), Cvoid, (sfVector3f,), direction)
end

function sfListener_getDirection()
    ccall((:sfListener_getDirection, libcsfml_audio), sfVector3f, ())
end

function sfListener_setUpVector(upVector)
    ccall((:sfListener_setUpVector, libcsfml_audio), Cvoid, (sfVector3f,), upVector)
end

function sfListener_getUpVector()
    ccall((:sfListener_getUpVector, libcsfml_audio), sfVector3f, ())
end
# Julia wrapper for header: Music.h
# Automatically generated using Clang.jl


function sfMusic_createFromFile(filename)
    ccall((:sfMusic_createFromFile, libcsfml_audio), Ptr{sfMusic}, (Cstring,), filename)
end

function sfMusic_createFromMemory(data, sizeInBytes)
    ccall((:sfMusic_createFromMemory, libcsfml_audio), Ptr{sfMusic}, (Ptr{Cvoid}, Csize_t), data, sizeInBytes)
end

function sfMusic_createFromStream(stream)
    ccall((:sfMusic_createFromStream, libcsfml_audio), Ptr{sfMusic}, (Ptr{sfInputStream},), stream)
end

function sfMusic_destroy(music)
    ccall((:sfMusic_destroy, libcsfml_audio), Cvoid, (Ptr{sfMusic},), music)
end

function sfMusic_setLoop(music, loop)
    ccall((:sfMusic_setLoop, libcsfml_audio), Cvoid, (Ptr{sfMusic}, sfBool), music, loop)
end

function sfMusic_getLoop(music)
    ccall((:sfMusic_getLoop, libcsfml_audio), sfBool, (Ptr{sfMusic},), music)
end

function sfMusic_getDuration(music)
    ccall((:sfMusic_getDuration, libcsfml_audio), sfTime, (Ptr{sfMusic},), music)
end

function sfMusic_getLoopPoints(music)
    ccall((:sfMusic_getLoopPoints, libcsfml_audio), sfTimeSpan, (Ptr{sfMusic},), music)
end

function sfMusic_setLoopPoints(music, timePoints)
    ccall((:sfMusic_setLoopPoints, libcsfml_audio), Cvoid, (Ptr{sfMusic}, sfTimeSpan), music, timePoints)
end

function sfMusic_play(music)
    ccall((:sfMusic_play, libcsfml_audio), Cvoid, (Ptr{sfMusic},), music)
end

function sfMusic_pause(music)
    ccall((:sfMusic_pause, libcsfml_audio), Cvoid, (Ptr{sfMusic},), music)
end

function sfMusic_stop(music)
    ccall((:sfMusic_stop, libcsfml_audio), Cvoid, (Ptr{sfMusic},), music)
end

function sfMusic_getChannelCount(music)
    ccall((:sfMusic_getChannelCount, libcsfml_audio), UInt32, (Ptr{sfMusic},), music)
end

function sfMusic_getSampleRate(music)
    ccall((:sfMusic_getSampleRate, libcsfml_audio), UInt32, (Ptr{sfMusic},), music)
end

function sfMusic_getStatus(music)
    ccall((:sfMusic_getStatus, libcsfml_audio), sfSoundStatus, (Ptr{sfMusic},), music)
end

function sfMusic_getPlayingOffset(music)
    ccall((:sfMusic_getPlayingOffset, libcsfml_audio), sfTime, (Ptr{sfMusic},), music)
end

function sfMusic_setPitch(music, pitch)
    ccall((:sfMusic_setPitch, libcsfml_audio), Cvoid, (Ptr{sfMusic}, Cfloat), music, pitch)
end

function sfMusic_setVolume(music, volume)
    ccall((:sfMusic_setVolume, libcsfml_audio), Cvoid, (Ptr{sfMusic}, Cfloat), music, volume)
end

function sfMusic_setPosition(music, position)
    ccall((:sfMusic_setPosition, libcsfml_audio), Cvoid, (Ptr{sfMusic}, sfVector3f), music, position)
end

function sfMusic_setRelativeToListener(music, relative)
    ccall((:sfMusic_setRelativeToListener, libcsfml_audio), Cvoid, (Ptr{sfMusic}, sfBool), music, relative)
end

function sfMusic_setMinDistance(music, distance)
    ccall((:sfMusic_setMinDistance, libcsfml_audio), Cvoid, (Ptr{sfMusic}, Cfloat), music, distance)
end

function sfMusic_setAttenuation(music, attenuation)
    ccall((:sfMusic_setAttenuation, libcsfml_audio), Cvoid, (Ptr{sfMusic}, Cfloat), music, attenuation)
end

function sfMusic_setPlayingOffset(music, timeOffset)
    ccall((:sfMusic_setPlayingOffset, libcsfml_audio), Cvoid, (Ptr{sfMusic}, sfTime), music, timeOffset)
end

function sfMusic_getPitch(music)
    ccall((:sfMusic_getPitch, libcsfml_audio), Cfloat, (Ptr{sfMusic},), music)
end

function sfMusic_getVolume(music)
    ccall((:sfMusic_getVolume, libcsfml_audio), Cfloat, (Ptr{sfMusic},), music)
end

function sfMusic_getPosition(music)
    ccall((:sfMusic_getPosition, libcsfml_audio), sfVector3f, (Ptr{sfMusic},), music)
end

function sfMusic_isRelativeToListener(music)
    ccall((:sfMusic_isRelativeToListener, libcsfml_audio), sfBool, (Ptr{sfMusic},), music)
end

function sfMusic_getMinDistance(music)
    ccall((:sfMusic_getMinDistance, libcsfml_audio), Cfloat, (Ptr{sfMusic},), music)
end

function sfMusic_getAttenuation(music)
    ccall((:sfMusic_getAttenuation, libcsfml_audio), Cfloat, (Ptr{sfMusic},), music)
end
# Julia wrapper for header: Sound.h
# Automatically generated using Clang.jl


function sfSound_create()
    ccall((:sfSound_create, libcsfml_audio), Ptr{sfSound}, ())
end

function sfSound_copy(sound)
    ccall((:sfSound_copy, libcsfml_audio), Ptr{sfSound}, (Ptr{sfSound},), sound)
end

function sfSound_destroy(sound)
    ccall((:sfSound_destroy, libcsfml_audio), Cvoid, (Ptr{sfSound},), sound)
end

function sfSound_play(sound)
    ccall((:sfSound_play, libcsfml_audio), Cvoid, (Ptr{sfSound},), sound)
end

function sfSound_pause(sound)
    ccall((:sfSound_pause, libcsfml_audio), Cvoid, (Ptr{sfSound},), sound)
end

function sfSound_stop(sound)
    ccall((:sfSound_stop, libcsfml_audio), Cvoid, (Ptr{sfSound},), sound)
end

function sfSound_setBuffer(sound, buffer)
    ccall((:sfSound_setBuffer, libcsfml_audio), Cvoid, (Ptr{sfSound}, Ptr{sfSoundBuffer}), sound, buffer)
end

function sfSound_getBuffer(sound)
    ccall((:sfSound_getBuffer, libcsfml_audio), Ptr{sfSoundBuffer}, (Ptr{sfSound},), sound)
end

function sfSound_setLoop(sound, loop)
    ccall((:sfSound_setLoop, libcsfml_audio), Cvoid, (Ptr{sfSound}, sfBool), sound, loop)
end

function sfSound_getLoop(sound)
    ccall((:sfSound_getLoop, libcsfml_audio), sfBool, (Ptr{sfSound},), sound)
end

function sfSound_getStatus(sound)
    ccall((:sfSound_getStatus, libcsfml_audio), sfSoundStatus, (Ptr{sfSound},), sound)
end

function sfSound_setPitch(sound, pitch)
    ccall((:sfSound_setPitch, libcsfml_audio), Cvoid, (Ptr{sfSound}, Cfloat), sound, pitch)
end

function sfSound_setVolume(sound, volume)
    ccall((:sfSound_setVolume, libcsfml_audio), Cvoid, (Ptr{sfSound}, Cfloat), sound, volume)
end

function sfSound_setPosition(sound, position)
    ccall((:sfSound_setPosition, libcsfml_audio), Cvoid, (Ptr{sfSound}, sfVector3f), sound, position)
end

function sfSound_setRelativeToListener(sound, relative)
    ccall((:sfSound_setRelativeToListener, libcsfml_audio), Cvoid, (Ptr{sfSound}, sfBool), sound, relative)
end

function sfSound_setMinDistance(sound, distance)
    ccall((:sfSound_setMinDistance, libcsfml_audio), Cvoid, (Ptr{sfSound}, Cfloat), sound, distance)
end

function sfSound_setAttenuation(sound, attenuation)
    ccall((:sfSound_setAttenuation, libcsfml_audio), Cvoid, (Ptr{sfSound}, Cfloat), sound, attenuation)
end

function sfSound_setPlayingOffset(sound, timeOffset)
    ccall((:sfSound_setPlayingOffset, libcsfml_audio), Cvoid, (Ptr{sfSound}, sfTime), sound, timeOffset)
end

function sfSound_getPitch(sound)
    ccall((:sfSound_getPitch, libcsfml_audio), Cfloat, (Ptr{sfSound},), sound)
end

function sfSound_getVolume(sound)
    ccall((:sfSound_getVolume, libcsfml_audio), Cfloat, (Ptr{sfSound},), sound)
end

function sfSound_getPosition(sound)
    ccall((:sfSound_getPosition, libcsfml_audio), sfVector3f, (Ptr{sfSound},), sound)
end

function sfSound_isRelativeToListener(sound)
    ccall((:sfSound_isRelativeToListener, libcsfml_audio), sfBool, (Ptr{sfSound},), sound)
end

function sfSound_getMinDistance(sound)
    ccall((:sfSound_getMinDistance, libcsfml_audio), Cfloat, (Ptr{sfSound},), sound)
end

function sfSound_getAttenuation(sound)
    ccall((:sfSound_getAttenuation, libcsfml_audio), Cfloat, (Ptr{sfSound},), sound)
end

function sfSound_getPlayingOffset(sound)
    ccall((:sfSound_getPlayingOffset, libcsfml_audio), sfTime, (Ptr{sfSound},), sound)
end
# Julia wrapper for header: SoundBuffer.h
# Automatically generated using Clang.jl


function sfSoundBuffer_createFromFile(filename)
    ccall((:sfSoundBuffer_createFromFile, libcsfml_audio), Ptr{sfSoundBuffer}, (Cstring,), filename)
end

function sfSoundBuffer_createFromMemory(data, sizeInBytes)
    ccall((:sfSoundBuffer_createFromMemory, libcsfml_audio), Ptr{sfSoundBuffer}, (Ptr{Cvoid}, Csize_t), data, sizeInBytes)
end

function sfSoundBuffer_createFromStream(stream)
    ccall((:sfSoundBuffer_createFromStream, libcsfml_audio), Ptr{sfSoundBuffer}, (Ptr{sfInputStream},), stream)
end

function sfSoundBuffer_createFromSamples(samples, sampleCount, channelCount, sampleRate)
    ccall((:sfSoundBuffer_createFromSamples, libcsfml_audio), Ptr{sfSoundBuffer}, (Ptr{sfInt16}, sfUint64, UInt32, UInt32), samples, sampleCount, channelCount, sampleRate)
end

function sfSoundBuffer_copy(soundBuffer)
    ccall((:sfSoundBuffer_copy, libcsfml_audio), Ptr{sfSoundBuffer}, (Ptr{sfSoundBuffer},), soundBuffer)
end

function sfSoundBuffer_destroy(soundBuffer)
    ccall((:sfSoundBuffer_destroy, libcsfml_audio), Cvoid, (Ptr{sfSoundBuffer},), soundBuffer)
end

function sfSoundBuffer_saveToFile(soundBuffer, filename)
    ccall((:sfSoundBuffer_saveToFile, libcsfml_audio), sfBool, (Ptr{sfSoundBuffer}, Cstring), soundBuffer, filename)
end

function sfSoundBuffer_getSamples(soundBuffer)
    ccall((:sfSoundBuffer_getSamples, libcsfml_audio), Ptr{sfInt16}, (Ptr{sfSoundBuffer},), soundBuffer)
end

function sfSoundBuffer_getSampleCount(soundBuffer)
    ccall((:sfSoundBuffer_getSampleCount, libcsfml_audio), sfUint64, (Ptr{sfSoundBuffer},), soundBuffer)
end

function sfSoundBuffer_getSampleRate(soundBuffer)
    ccall((:sfSoundBuffer_getSampleRate, libcsfml_audio), UInt32, (Ptr{sfSoundBuffer},), soundBuffer)
end

function sfSoundBuffer_getChannelCount(soundBuffer)
    ccall((:sfSoundBuffer_getChannelCount, libcsfml_audio), UInt32, (Ptr{sfSoundBuffer},), soundBuffer)
end

function sfSoundBuffer_getDuration(soundBuffer)
    ccall((:sfSoundBuffer_getDuration, libcsfml_audio), sfTime, (Ptr{sfSoundBuffer},), soundBuffer)
end
# Julia wrapper for header: SoundBufferRecorder.h
# Automatically generated using Clang.jl


function sfSoundBufferRecorder_create()
    ccall((:sfSoundBufferRecorder_create, libcsfml_audio), Ptr{sfSoundBufferRecorder}, ())
end

function sfSoundBufferRecorder_destroy(soundBufferRecorder)
    ccall((:sfSoundBufferRecorder_destroy, libcsfml_audio), Cvoid, (Ptr{sfSoundBufferRecorder},), soundBufferRecorder)
end

function sfSoundBufferRecorder_start(soundBufferRecorder, sampleRate)
    ccall((:sfSoundBufferRecorder_start, libcsfml_audio), sfBool, (Ptr{sfSoundBufferRecorder}, UInt32), soundBufferRecorder, sampleRate)
end

function sfSoundBufferRecorder_stop(soundBufferRecorder)
    ccall((:sfSoundBufferRecorder_stop, libcsfml_audio), Cvoid, (Ptr{sfSoundBufferRecorder},), soundBufferRecorder)
end

function sfSoundBufferRecorder_getSampleRate(soundBufferRecorder)
    ccall((:sfSoundBufferRecorder_getSampleRate, libcsfml_audio), UInt32, (Ptr{sfSoundBufferRecorder},), soundBufferRecorder)
end

function sfSoundBufferRecorder_getBuffer(soundBufferRecorder)
    ccall((:sfSoundBufferRecorder_getBuffer, libcsfml_audio), Ptr{sfSoundBuffer}, (Ptr{sfSoundBufferRecorder},), soundBufferRecorder)
end

function sfSoundBufferRecorder_setDevice(soundBufferRecorder, name)
    ccall((:sfSoundBufferRecorder_setDevice, libcsfml_audio), sfBool, (Ptr{sfSoundBufferRecorder}, Cstring), soundBufferRecorder, name)
end

function sfSoundBufferRecorder_getDevice(soundBufferRecorder)
    ccall((:sfSoundBufferRecorder_getDevice, libcsfml_audio), Cstring, (Ptr{sfSoundBufferRecorder},), soundBufferRecorder)
end
# Julia wrapper for header: SoundRecorder.h
# Automatically generated using Clang.jl


function sfSoundRecorder_create(onStart, onProcess, onStop, userData)
    ccall((:sfSoundRecorder_create, libcsfml_audio), Ptr{sfSoundRecorder}, (sfSoundRecorderStartCallback, sfSoundRecorderProcessCallback, sfSoundRecorderStopCallback, Ptr{Cvoid}), onStart, onProcess, onStop, userData)
end

function sfSoundRecorder_destroy(soundRecorder)
    ccall((:sfSoundRecorder_destroy, libcsfml_audio), Cvoid, (Ptr{sfSoundRecorder},), soundRecorder)
end

function sfSoundRecorder_start(soundRecorder, sampleRate)
    ccall((:sfSoundRecorder_start, libcsfml_audio), sfBool, (Ptr{sfSoundRecorder}, UInt32), soundRecorder, sampleRate)
end

function sfSoundRecorder_stop(soundRecorder)
    ccall((:sfSoundRecorder_stop, libcsfml_audio), Cvoid, (Ptr{sfSoundRecorder},), soundRecorder)
end

function sfSoundRecorder_getSampleRate(soundRecorder)
    ccall((:sfSoundRecorder_getSampleRate, libcsfml_audio), UInt32, (Ptr{sfSoundRecorder},), soundRecorder)
end

function sfSoundRecorder_isAvailable()
    ccall((:sfSoundRecorder_isAvailable, libcsfml_audio), sfBool, ())
end

function sfSoundRecorder_setProcessingInterval(soundRecorder, interval)
    ccall((:sfSoundRecorder_setProcessingInterval, libcsfml_audio), Cvoid, (Ptr{sfSoundRecorder}, sfTime), soundRecorder, interval)
end

function sfSoundRecorder_getAvailableDevices(count)
    ccall((:sfSoundRecorder_getAvailableDevices, libcsfml_audio), Ptr{Cstring}, (Ptr{Csize_t},), count)
end

function sfSoundRecorder_getDefaultDevice()
    ccall((:sfSoundRecorder_getDefaultDevice, libcsfml_audio), Cstring, ())
end

function sfSoundRecorder_setDevice(soundRecorder, name)
    ccall((:sfSoundRecorder_setDevice, libcsfml_audio), sfBool, (Ptr{sfSoundRecorder}, Cstring), soundRecorder, name)
end

function sfSoundRecorder_getDevice(soundRecorder)
    ccall((:sfSoundRecorder_getDevice, libcsfml_audio), Cstring, (Ptr{sfSoundRecorder},), soundRecorder)
end

function sfSoundRecorder_setChannelCount(soundRecorder, channelCount)
    ccall((:sfSoundRecorder_setChannelCount, libcsfml_audio), Cvoid, (Ptr{sfSoundRecorder}, UInt32), soundRecorder, channelCount)
end

function sfSoundRecorder_getChannelCount(soundRecorder)
    ccall((:sfSoundRecorder_getChannelCount, libcsfml_audio), UInt32, (Ptr{sfSoundRecorder},), soundRecorder)
end
# Julia wrapper for header: SoundStatus.h
# Automatically generated using Clang.jl

# Julia wrapper for header: SoundStream.h
# Automatically generated using Clang.jl


function sfSoundStream_create(onGetData, onSeek, channelCount, sampleRate, userData)
    ccall((:sfSoundStream_create, libcsfml_audio), Ptr{sfSoundStream}, (sfSoundStreamGetDataCallback, sfSoundStreamSeekCallback, UInt32, UInt32, Ptr{Cvoid}), onGetData, onSeek, channelCount, sampleRate, userData)
end

function sfSoundStream_destroy(soundStream)
    ccall((:sfSoundStream_destroy, libcsfml_audio), Cvoid, (Ptr{sfSoundStream},), soundStream)
end

function sfSoundStream_play(soundStream)
    ccall((:sfSoundStream_play, libcsfml_audio), Cvoid, (Ptr{sfSoundStream},), soundStream)
end

function sfSoundStream_pause(soundStream)
    ccall((:sfSoundStream_pause, libcsfml_audio), Cvoid, (Ptr{sfSoundStream},), soundStream)
end

function sfSoundStream_stop(soundStream)
    ccall((:sfSoundStream_stop, libcsfml_audio), Cvoid, (Ptr{sfSoundStream},), soundStream)
end

function sfSoundStream_getStatus(soundStream)
    ccall((:sfSoundStream_getStatus, libcsfml_audio), sfSoundStatus, (Ptr{sfSoundStream},), soundStream)
end

function sfSoundStream_getChannelCount(soundStream)
    ccall((:sfSoundStream_getChannelCount, libcsfml_audio), UInt32, (Ptr{sfSoundStream},), soundStream)
end

function sfSoundStream_getSampleRate(soundStream)
    ccall((:sfSoundStream_getSampleRate, libcsfml_audio), UInt32, (Ptr{sfSoundStream},), soundStream)
end

function sfSoundStream_setPitch(soundStream, pitch)
    ccall((:sfSoundStream_setPitch, libcsfml_audio), Cvoid, (Ptr{sfSoundStream}, Cfloat), soundStream, pitch)
end

function sfSoundStream_setVolume(soundStream, volume)
    ccall((:sfSoundStream_setVolume, libcsfml_audio), Cvoid, (Ptr{sfSoundStream}, Cfloat), soundStream, volume)
end

function sfSoundStream_setPosition(soundStream, position)
    ccall((:sfSoundStream_setPosition, libcsfml_audio), Cvoid, (Ptr{sfSoundStream}, sfVector3f), soundStream, position)
end

function sfSoundStream_setRelativeToListener(soundStream, relative)
    ccall((:sfSoundStream_setRelativeToListener, libcsfml_audio), Cvoid, (Ptr{sfSoundStream}, sfBool), soundStream, relative)
end

function sfSoundStream_setMinDistance(soundStream, distance)
    ccall((:sfSoundStream_setMinDistance, libcsfml_audio), Cvoid, (Ptr{sfSoundStream}, Cfloat), soundStream, distance)
end

function sfSoundStream_setAttenuation(soundStream, attenuation)
    ccall((:sfSoundStream_setAttenuation, libcsfml_audio), Cvoid, (Ptr{sfSoundStream}, Cfloat), soundStream, attenuation)
end

function sfSoundStream_setPlayingOffset(soundStream, timeOffset)
    ccall((:sfSoundStream_setPlayingOffset, libcsfml_audio), Cvoid, (Ptr{sfSoundStream}, sfTime), soundStream, timeOffset)
end

function sfSoundStream_setLoop(soundStream, loop)
    ccall((:sfSoundStream_setLoop, libcsfml_audio), Cvoid, (Ptr{sfSoundStream}, sfBool), soundStream, loop)
end

function sfSoundStream_getPitch(soundStream)
    ccall((:sfSoundStream_getPitch, libcsfml_audio), Cfloat, (Ptr{sfSoundStream},), soundStream)
end

function sfSoundStream_getVolume(soundStream)
    ccall((:sfSoundStream_getVolume, libcsfml_audio), Cfloat, (Ptr{sfSoundStream},), soundStream)
end

function sfSoundStream_getPosition(soundStream)
    ccall((:sfSoundStream_getPosition, libcsfml_audio), sfVector3f, (Ptr{sfSoundStream},), soundStream)
end

function sfSoundStream_isRelativeToListener(soundStream)
    ccall((:sfSoundStream_isRelativeToListener, libcsfml_audio), sfBool, (Ptr{sfSoundStream},), soundStream)
end

function sfSoundStream_getMinDistance(soundStream)
    ccall((:sfSoundStream_getMinDistance, libcsfml_audio), Cfloat, (Ptr{sfSoundStream},), soundStream)
end

function sfSoundStream_getAttenuation(soundStream)
    ccall((:sfSoundStream_getAttenuation, libcsfml_audio), Cfloat, (Ptr{sfSoundStream},), soundStream)
end

function sfSoundStream_getLoop(soundStream)
    ccall((:sfSoundStream_getLoop, libcsfml_audio), sfBool, (Ptr{sfSoundStream},), soundStream)
end

function sfSoundStream_getPlayingOffset(soundStream)
    ccall((:sfSoundStream_getPlayingOffset, libcsfml_audio), sfTime, (Ptr{sfSoundStream},), soundStream)
end
# Julia wrapper for header: Types.h
# Automatically generated using Clang.jl

