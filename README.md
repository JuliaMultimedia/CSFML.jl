# CSFML

[![Build Status](https://travis-ci.com/JuliaMultimedia/CSFML.jl.svg?branch=master)](https://travis-ci.com/JuliaMultimedia/CSFML.jl)
[![Build status](https://ci.appveyor.com/api/projects/status/qvki9lqu1d5q6nm1?svg=true)](https://ci.appveyor.com/project/JuliaMultimedia/csfml-jl-38st2)


Julia wrapper for [CSFML](https://github.com/SFML/CSFML), the official binding of [SFML](https://github.com/SFML/SFML) for C. SFML is a simple, fast, cross-platform and object-oriented multimedia API. It provides access to windowing, graphics, audio and network. The Julia bindings in this repo are auto-generated using [Clang.jl](https://github.com/JuliaInterop/Clang.jl). You could refer to CSFML's repo for how to use those bindings.

## Installation
```julia
pkg> add CSFML
```
On Linux, you might need to install the following dependencies firstly:

- openal
- pthread
- opengl
- xlib
- xrandr
- udev
- freetype
- flac
- vorbis

Should you encountered any installation problems, feel free to file an issue.

## Quick start

```julia
using CSFML.LibCSFML

mode = sfVideoMode(1280, 720, 32)

window = sfRenderWindow_create(mode, "SFML window", sfResize | sfClose, C_NULL)
@assert window != C_NULL

texture = sfTexture_createFromFile(joinpath(@__DIR__, "julia-tan.png"), C_NULL)
@assert texture != C_NULL

sprite = sfSprite_create()
sfSprite_setTexture(sprite, texture, sfTrue)

font = sfFont_createFromFile(joinpath(@__DIR__, "Roboto-Bold.ttf"))
@assert font != C_NULL

text = sfText_create()
sfText_setString(text, "Hello SFML")
sfText_setFont(text, font)
sfText_setCharacterSize(text, 50)

music = sfMusic_createFromFile(joinpath(@__DIR__, "Chrono_Trigger.ogg"))
@assert music != C_NULL

sfMusic_play(music)

event_ref = Ref(sfEvent(sfEvtClosed))

while Bool(sfRenderWindow_isOpen(window))
    # process events
    while Bool(sfRenderWindow_pollEvent(window, event_ref))
        # close window : exit
        event_ref.x.type == sfEvtClosed && sfRenderWindow_close(window)
    end
    # clear the screen
    sfRenderWindow_clear(window, sfColor_fromRGBA(0,0,0,1))
    # draw the sprite
    sfRenderWindow_drawSprite(window, sprite, C_NULL)
    # draw the text
    sfRenderWindow_drawText(window, text, C_NULL)
    # update the window
    sfRenderWindow_display(window)
end

sfMusic_destroy(music)
sfText_destroy(text)
sfFont_destroy(font)
sfSprite_destroy(sprite)
sfTexture_destroy(texture)
sfRenderWindow_destroy(window)
```

## License
This package is released under zlib/png license except `examples/Chrono_Trigger.ogg` which is
licensed under https://creativecommons.org/licenses/by-sa/3.0/.
