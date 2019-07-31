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

event_ref = Ref{sfEvent}()

while Bool(sfRenderWindow_isOpen(window))
    # process events
    while Bool(sfRenderWindow_pollEvent(window, event_ref))
        # close window : exit
        event_ref[].type == sfEvtClosed && sfRenderWindow_close(window)
        event_ref[].type == sfEvtResized && println("Trigger sfEvtResized.")
        event_ref[].type == sfEvtLostFocus && println("Trigger sfEvtLostFocus.")
        event_ref[].type == sfEvtGainedFocus && println("Trigger sfEvtGainedFocus.")
        event_ref[].type == sfEvtTextEntered && println("Trigger sfEvtTextEntered: $(event_ref[].text.unicode)")
        event_ref[].type == sfEvtKeyPressed && println("Trigger sfEvtKeyPressed: $(event_ref[].key.code)")
        event_ref[].type == sfEvtKeyReleased && println("Trigger sfEvtKeyReleased: $(event_ref[].key.code)")
        event_ref[].type == sfEvtMouseWheelMoved && println("Trigger sfEvtMouseWheelMoved: $(event_ref[].mouseWheel.sfMouseVerticalWheel)")
        event_ref[].type == sfEvtMouseWheelScrolled && println("Trigger sfEvtMouseWheelScrolled: $(event_ref[].mouseWheel.sfMouseVerticalWheel)")
        event_ref[].type == sfEvtMouseButtonPressed && println("Trigger sfEvtMouseButtonPressed: $(event_ref[].mouseButton.button)")
        event_ref[].type == sfEvtMouseButtonReleased && println("Trigger sfEvtMouseButtonReleased: $(event_ref[].mouseButton.x), $(event_ref[].mouseButton.y)")
        event_ref[].type == sfEvtMouseMoved && println("Trigger sfEvtMouseMoved: $(event_ref[].mouseMove.x), $(event_ref[].mouseMove.y)")
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
