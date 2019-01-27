using Clang

const SFML_INCLUDE = joinpath(@__DIR__, "..", "deps", "usr", "include")
const CONFIG_H = joinpath(SFML_INCLUDE, "SFML", "Config.h")

# create a work context
ctx = DefaultContext()

# parse headers
parse_headers!(ctx, [CONFIG_H], includes=[SFML_INCLUDE, CLANG_INCLUDE])

# settings
ctx.options["is_struct_mutable"] = false  # for nested struct

# write output
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
end

# write "common" definitions: types, typealiases, etc.
common_file = joinpath(@__DIR__, "..", "src", "config.jl")
open(common_file, "w") do f
    println(f, "# Automatically generated using Clang.jl\n")
    print_buffer(f, dump_to_buffer(ctx.common_buffer))
end
