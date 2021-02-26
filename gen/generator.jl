using Clang.Generators
using CSFML.LibCSFML.CSFML_jll

include_dir = joinpath(CSFML_jll.artifact_dir, "include") |> normpath
sfml_dir = joinpath(include_dir, "SFML")

const AUDIO = joinpath(sfml_dir, "Audio.h")
const CONFIG = joinpath(sfml_dir, "Config.h")
const GRAPHICS = joinpath(sfml_dir, "Graphics.h")
const NETWORK = joinpath(sfml_dir, "Network.h")
const SYSTEM = joinpath(sfml_dir, "System.h")
const WINDOW = joinpath(sfml_dir, "Window.h")

options = load_options(joinpath(@__DIR__, "generator.toml"))

args = ["-I$include_dir"]

ctx = create_context([AUDIO, GRAPHICS, NETWORK, SYSTEM, WINDOW], args, options)

build!(ctx)
