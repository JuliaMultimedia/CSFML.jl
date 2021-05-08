using Clang
using Clang.Generators
using CSFML.LibCSFML.CSFML_jll

cd(@__DIR__)

include_dir = joinpath(CSFML_jll.artifact_dir, "include") |> normpath
sfml_dir = joinpath(include_dir, "SFML")
audio_h = joinpath(sfml_dir, "Audio.h")
graphics_h = joinpath(sfml_dir, "Graphics.h")
network_h = joinpath(sfml_dir, "Network.h")
system_h = joinpath(sfml_dir, "System.h")
window_h = joinpath(sfml_dir, "Window.h")
headers = [audio_h, graphics_h, network_h, system_h, window_h]

options = load_options(joinpath(@__DIR__, "generator.toml"))

args = get_default_args()
push!(args, "-I$include_dir")

ctx = create_context(headers, args, options)

build!(ctx)
