# Julia wrapper for header: /Users/gnimuc/LibCSFML/gen/../deps/usr/include/SFML/System.h
# Automatically generated using Clang.jl

# Julia wrapper for header: /Users/gnimuc/LibCSFML/gen/../deps/usr/include/SFML/System/Clock.h
# Automatically generated using Clang.jl


function sfClock_create()
    ccall((:sfClock_create, libcsfml_system), Ptr{sfClock}, ())
end

function sfClock_copy(clock)
    ccall((:sfClock_copy, libcsfml_system), Ptr{sfClock}, (Ptr{sfClock},), clock)
end

function sfClock_destroy(clock)
    ccall((:sfClock_destroy, libcsfml_system), Cvoid, (Ptr{sfClock},), clock)
end

function sfClock_getElapsedTime(clock)
    ccall((:sfClock_getElapsedTime, libcsfml_system), sfTime, (Ptr{sfClock},), clock)
end

function sfClock_restart(clock)
    ccall((:sfClock_restart, libcsfml_system), sfTime, (Ptr{sfClock},), clock)
end
# Julia wrapper for header: /Users/gnimuc/LibCSFML/gen/../deps/usr/include/SFML/System/Export.h
# Automatically generated using Clang.jl

# Julia wrapper for header: /Users/gnimuc/LibCSFML/gen/../deps/usr/include/SFML/System/InputStream.h
# Automatically generated using Clang.jl

# Julia wrapper for header: /Users/gnimuc/LibCSFML/gen/../deps/usr/include/SFML/System/Mutex.h
# Automatically generated using Clang.jl


function sfMutex_create()
    ccall((:sfMutex_create, libcsfml_system), Ptr{sfMutex}, ())
end

function sfMutex_destroy(mutex)
    ccall((:sfMutex_destroy, libcsfml_system), Cvoid, (Ptr{sfMutex},), mutex)
end

function sfMutex_lock(mutex)
    ccall((:sfMutex_lock, libcsfml_system), Cvoid, (Ptr{sfMutex},), mutex)
end

function sfMutex_unlock(mutex)
    ccall((:sfMutex_unlock, libcsfml_system), Cvoid, (Ptr{sfMutex},), mutex)
end
# Julia wrapper for header: /Users/gnimuc/LibCSFML/gen/../deps/usr/include/SFML/System/Sleep.h
# Automatically generated using Clang.jl


function sfSleep(duration)
    ccall((:sfSleep, libcsfml_system), Cvoid, (sfTime,), duration)
end
# Julia wrapper for header: /Users/gnimuc/LibCSFML/gen/../deps/usr/include/SFML/System/Thread.h
# Automatically generated using Clang.jl


function sfThread_create(_function, userData)
    ccall((:sfThread_create, libcsfml_system), Ptr{sfThread}, (Ptr{Cvoid}, Ptr{Cvoid}), _function, userData)
end

function sfThread_destroy(thread)
    ccall((:sfThread_destroy, libcsfml_system), Cvoid, (Ptr{sfThread},), thread)
end

function sfThread_launch(thread)
    ccall((:sfThread_launch, libcsfml_system), Cvoid, (Ptr{sfThread},), thread)
end

function sfThread_wait(thread)
    ccall((:sfThread_wait, libcsfml_system), Cvoid, (Ptr{sfThread},), thread)
end

function sfThread_terminate(thread)
    ccall((:sfThread_terminate, libcsfml_system), Cvoid, (Ptr{sfThread},), thread)
end
# Julia wrapper for header: /Users/gnimuc/LibCSFML/gen/../deps/usr/include/SFML/System/Time.h
# Automatically generated using Clang.jl


function sfTime_asSeconds(time)
    ccall((:sfTime_asSeconds, libcsfml_system), Cfloat, (sfTime,), time)
end

function sfTime_asMilliseconds(time)
    ccall((:sfTime_asMilliseconds, libcsfml_system), sfInt32, (sfTime,), time)
end

function sfTime_asMicroseconds(time)
    ccall((:sfTime_asMicroseconds, libcsfml_system), sfInt64, (sfTime,), time)
end

function sfSeconds(amount)
    ccall((:sfSeconds, libcsfml_system), sfTime, (Cfloat,), amount)
end

function sfMilliseconds(amount)
    ccall((:sfMilliseconds, libcsfml_system), sfTime, (sfInt32,), amount)
end

function sfMicroseconds(amount)
    ccall((:sfMicroseconds, libcsfml_system), sfTime, (sfInt64,), amount)
end
# Julia wrapper for header: /Users/gnimuc/LibCSFML/gen/../deps/usr/include/SFML/System/Types.h
# Automatically generated using Clang.jl

# Julia wrapper for header: /Users/gnimuc/LibCSFML/gen/../deps/usr/include/SFML/System/Vector2.h
# Automatically generated using Clang.jl

# Julia wrapper for header: /Users/gnimuc/LibCSFML/gen/../deps/usr/include/SFML/System/Vector3.h
# Automatically generated using Clang.jl

