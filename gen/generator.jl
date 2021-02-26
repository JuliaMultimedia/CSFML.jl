using Clang
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

build!(ctx, BUILDSTAGE_NO_PRINTING)

for node in get_nodes(ctx.dag)
    file = get_filename(node.cursor)
    if startswith(file, joinpath(sfml_dir, "Audio"))
        Generators.is_function(node) || continue
        if !Generators.is_variadic_function(node)
            expr = node.exprs[1]
            expr.args[2].args[1].args[2].args[2] = :libcsfml_audio
        end
    elseif startswith(file, joinpath(sfml_dir, "Graphics"))
        Generators.is_function(node) || continue
        if !Generators.is_variadic_function(node)
            expr = node.exprs[1]
            expr.args[2].args[1].args[2].args[2] = :libcsfml_graphics
        end
    elseif startswith(file, joinpath(sfml_dir, "Network"))
        Generators.is_function(node) || continue
        if !Generators.is_variadic_function(node)
            expr = node.exprs[1]
            expr.args[2].args[1].args[2].args[2] = :libcsfml_network
        end
    elseif startswith(file, joinpath(sfml_dir, "System"))
        Generators.is_function(node) || continue
        if !Generators.is_variadic_function(node)
            expr = node.exprs[1]
            expr.args[2].args[1].args[2].args[2] = :libcsfml_system
        end
    elseif startswith(file, joinpath(sfml_dir, "Window"))
        Generators.is_function(node) || continue
        if !Generators.is_variadic_function(node)
            expr = node.exprs[1]
            expr.args[2].args[1].args[2].args[2] = :libcsfml_window
        end
    end
end

build!(ctx, BUILDSTAGE_PRINTING_ONLY)
