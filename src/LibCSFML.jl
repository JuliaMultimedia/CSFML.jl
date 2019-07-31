module LibCSFML

import Libdl

# Load in `deps.jl`, complaining if it does not exist
const depsjl_path = joinpath(@__DIR__, "..", "deps", "deps.jl")
if !isfile(depsjl_path)
    error("CSFML was not built properly. Please run Pkg.build(\"CSFML\").")
end
include(depsjl_path)
# Module initialization function
function __init__()
    check_deps()
end

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
