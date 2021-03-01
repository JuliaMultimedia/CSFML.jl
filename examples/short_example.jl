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

try
    event_ref = Ref{sfEvent}()
    while Bool(sfRenderWindow_isOpen(window))
        # process events
        while Bool(sfRenderWindow_pollEvent(window, event_ref))
            event_ptr = Base.unsafe_convert(Ptr{sfEvent}, event_ref)
            # close window : exit
            GC.@preserve event_ref begin
                ty = unsafe_load(event_ptr.type)
                ty == sfEvtClosed && sfRenderWindow_close(window)
                ty == sfEvtResized && println("Trigger sfEvtResized.")
                ty == sfEvtLostFocus && println("Trigger sfEvtLostFocus.")
                ty == sfEvtGainedFocus && println("Trigger sfEvtGainedFocus.")
                ty == sfEvtTextEntered && println("Trigger sfEvtTextEntered: $(unsafe_load(event_ptr.text).unicode)")
                ty == sfEvtKeyPressed && println("Trigger sfEvtKeyPressed: $(unsafe_load(event_ptr.key).code)")
                ty == sfEvtKeyReleased && println("Trigger sfEvtKeyReleased: $(unsafe_load(event_ptr.key).code)")
                ty == sfEvtMouseWheelMoved && println("Trigger sfEvtMouseWheelMoved: $(unsafe_load(event_ptr.mouseWheel).x), $(unsafe_load(event_ptr.mouseWheel).y)")
                ty == sfEvtMouseWheelScrolled && println("Trigger sfEvtMouseWheelScrolled: $(unsafe_load(event_ptr.mouseWheelScroll).wheel)")
                ty == sfEvtMouseButtonPressed && println("Trigger sfEvtMouseButtonPressed: $(unsafe_load(event_ptr.mouseButton).button)")
                ty == sfEvtMouseButtonReleased && println("Trigger sfEvtMouseButtonReleased: $(unsafe_load(event_ptr.mouseButton).x), $(unsafe_load(event_ptr.mouseButton).y)")
                ty == sfEvtMouseMoved && println("Trigger sfEvtMouseMoved: $(unsafe_load(event_ptr.mouseMove).x), $(unsafe_load(event_ptr.mouseMove).y)")
            end
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
catch e
    @error "Error in renderloop!" exception=e
    Base.show_backtrace(stderr, catch_backtrace())
finally
    sfMusic_destroy(music)
    sfText_destroy(text)
    sfFont_destroy(font)
    sfSprite_destroy(sprite)
    sfTexture_destroy(texture)
    sfRenderWindow_destroy(window)
end
