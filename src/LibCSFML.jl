module LibCSFML

using CSFML_jll

using CEnum

const Ctm = Base.Libc.TmStruct
const Ctime_t = UInt
const Cclock_t = UInt

export Ctm, Ctime_t, Cclock_t

include(joinpath(@__DIR__, "config.jl"))

include(joinpath(@__DIR__, "System", "system_common.jl"))
include(joinpath(@__DIR__, "System", "system_api.jl"))

include(joinpath(@__DIR__, "Audio", "audio_common.jl"))
include(joinpath(@__DIR__, "Audio", "audio_api.jl"))

include(joinpath(@__DIR__, "Window", "window_common.jl"))
include(joinpath(@__DIR__, "Window", "window_api.jl"))

include(joinpath(@__DIR__, "Graphics", "graphics_common.jl"))
include(joinpath(@__DIR__, "Graphics", "graphics_api.jl"))

include(joinpath(@__DIR__, "Network", "network_common.jl"))
include(joinpath(@__DIR__, "Network", "network_api.jl"))

# export everything
foreach(names(@__MODULE__, all=true)) do s
   if startswith(string(s), "sf")
       @eval export $s
   end
end

end # module
