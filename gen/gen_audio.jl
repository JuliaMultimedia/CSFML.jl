using Clang
using CSFML
using CSFML.LibCSFML.CSFML_jll

const SFML_INCLUDE = joinpath(dirname(CSFML_jll.libcsfml_window_path), "..", "include") |> normpath
const AUDIO_DIR = joinpath(SFML_INCLUDE, "SFML", "Audio")
const AUDIO_HEADERS = [joinpath(AUDIO_DIR, header) for header in readdir(AUDIO_DIR) if endswith(header, ".h")]
const AUDIO_H = joinpath(SFML_INCLUDE, "SFML", "Audio.h")

# create a work context
ctx = DefaultContext()

# parse headers
parse_headers!(ctx, [AUDIO_H, AUDIO_HEADERS...], 
               args=[map(x->"-I"*x, find_std_headers())...],
               includes=[SFML_INCLUDE, CLANG_INCLUDE])

# settings
ctx.libname = "libcsfml_audio"
ctx.options["is_function_strictly_typed"] = false
ctx.options["is_struct_mutable"] = false  # for nested struct

# write output
api_file = joinpath(@__DIR__, "..", "src", "Audio", "audio_api.jl")
api_stream = open(api_file, "w")

for trans_unit in ctx.trans_units
    root_cursor = getcursor(trans_unit)
    push!(ctx.cursor_stack, root_cursor)
    header = spelling(root_cursor)
    @info "wrapping header: $header ..."
    # loop over all of the child cursors and wrap them, if appropriate.
    ctx.children = children(root_cursor)
    for (i, child) in enumerate(ctx.children)
        child_name = name(child)
        child_header = filename(child)
        ctx.children_index = i
        # choose which cursor to wrap
        startswith(child_name, "__") && continue  # skip compiler definitions
        child_name in keys(ctx.common_buffer) && continue  # already wrapped
        child_header != header && continue

        wrap!(ctx, child)
    end
    @info "writing $(api_file)"
    println(api_stream, "# Julia wrapper for header: $(basename(header))")
    println(api_stream, "# Automatically generated using Clang.jl\n")
    print_buffer(api_stream, ctx.api_buffer)
    empty!(ctx.api_buffer)  # clean up api_buffer for the next header
end
close(api_stream)

# write "common" definitions: types, typealiases, etc.
common_file = joinpath(@__DIR__, "..", "src", "Audio", "audio_common.jl")
open(common_file, "w") do f
    println(f, "# Automatically generated using Clang.jl\n")
    print_buffer(f, dump_to_buffer(ctx.common_buffer))
end
