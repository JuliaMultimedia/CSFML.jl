# Julia wrapper for header: Graphics.h
# Automatically generated using Clang.jl

# Julia wrapper for header: BlendMode.h
# Automatically generated using Clang.jl

# Julia wrapper for header: CircleShape.h
# Automatically generated using Clang.jl


function sfCircleShape_create()
    ccall((:sfCircleShape_create, libcsfml_graphics), Ptr{sfCircleShape}, ())
end

function sfCircleShape_copy(shape)
    ccall((:sfCircleShape_copy, libcsfml_graphics), Ptr{sfCircleShape}, (Ptr{sfCircleShape},), shape)
end

function sfCircleShape_destroy(shape)
    ccall((:sfCircleShape_destroy, libcsfml_graphics), Cvoid, (Ptr{sfCircleShape},), shape)
end

function sfCircleShape_setPosition(shape, position)
    ccall((:sfCircleShape_setPosition, libcsfml_graphics), Cvoid, (Ptr{sfCircleShape}, sfVector2f), shape, position)
end

function sfCircleShape_setRotation(shape, angle)
    ccall((:sfCircleShape_setRotation, libcsfml_graphics), Cvoid, (Ptr{sfCircleShape}, Cfloat), shape, angle)
end

function sfCircleShape_setScale(shape, scale)
    ccall((:sfCircleShape_setScale, libcsfml_graphics), Cvoid, (Ptr{sfCircleShape}, sfVector2f), shape, scale)
end

function sfCircleShape_setOrigin(shape, origin)
    ccall((:sfCircleShape_setOrigin, libcsfml_graphics), Cvoid, (Ptr{sfCircleShape}, sfVector2f), shape, origin)
end

function sfCircleShape_getPosition(shape)
    ccall((:sfCircleShape_getPosition, libcsfml_graphics), sfVector2f, (Ptr{sfCircleShape},), shape)
end

function sfCircleShape_getRotation(shape)
    ccall((:sfCircleShape_getRotation, libcsfml_graphics), Cfloat, (Ptr{sfCircleShape},), shape)
end

function sfCircleShape_getScale(shape)
    ccall((:sfCircleShape_getScale, libcsfml_graphics), sfVector2f, (Ptr{sfCircleShape},), shape)
end

function sfCircleShape_getOrigin(shape)
    ccall((:sfCircleShape_getOrigin, libcsfml_graphics), sfVector2f, (Ptr{sfCircleShape},), shape)
end

function sfCircleShape_move(shape, offset)
    ccall((:sfCircleShape_move, libcsfml_graphics), Cvoid, (Ptr{sfCircleShape}, sfVector2f), shape, offset)
end

function sfCircleShape_rotate(shape, angle)
    ccall((:sfCircleShape_rotate, libcsfml_graphics), Cvoid, (Ptr{sfCircleShape}, Cfloat), shape, angle)
end

function sfCircleShape_scale(shape, factors)
    ccall((:sfCircleShape_scale, libcsfml_graphics), Cvoid, (Ptr{sfCircleShape}, sfVector2f), shape, factors)
end

function sfCircleShape_getTransform(shape)
    ccall((:sfCircleShape_getTransform, libcsfml_graphics), sfTransform, (Ptr{sfCircleShape},), shape)
end

function sfCircleShape_getInverseTransform(shape)
    ccall((:sfCircleShape_getInverseTransform, libcsfml_graphics), sfTransform, (Ptr{sfCircleShape},), shape)
end

function sfCircleShape_setTexture(shape, texture, resetRect)
    ccall((:sfCircleShape_setTexture, libcsfml_graphics), Cvoid, (Ptr{sfCircleShape}, Ptr{sfTexture}, sfBool), shape, texture, resetRect)
end

function sfCircleShape_setTextureRect(shape, rect)
    ccall((:sfCircleShape_setTextureRect, libcsfml_graphics), Cvoid, (Ptr{sfCircleShape}, sfIntRect), shape, rect)
end

function sfCircleShape_setFillColor(shape, color)
    ccall((:sfCircleShape_setFillColor, libcsfml_graphics), Cvoid, (Ptr{sfCircleShape}, sfColor), shape, color)
end

function sfCircleShape_setOutlineColor(shape, color)
    ccall((:sfCircleShape_setOutlineColor, libcsfml_graphics), Cvoid, (Ptr{sfCircleShape}, sfColor), shape, color)
end

function sfCircleShape_setOutlineThickness(shape, thickness)
    ccall((:sfCircleShape_setOutlineThickness, libcsfml_graphics), Cvoid, (Ptr{sfCircleShape}, Cfloat), shape, thickness)
end

function sfCircleShape_getTexture(shape)
    ccall((:sfCircleShape_getTexture, libcsfml_graphics), Ptr{sfTexture}, (Ptr{sfCircleShape},), shape)
end

function sfCircleShape_getTextureRect(shape)
    ccall((:sfCircleShape_getTextureRect, libcsfml_graphics), sfIntRect, (Ptr{sfCircleShape},), shape)
end

function sfCircleShape_getFillColor(shape)
    ccall((:sfCircleShape_getFillColor, libcsfml_graphics), sfColor, (Ptr{sfCircleShape},), shape)
end

function sfCircleShape_getOutlineColor(shape)
    ccall((:sfCircleShape_getOutlineColor, libcsfml_graphics), sfColor, (Ptr{sfCircleShape},), shape)
end

function sfCircleShape_getOutlineThickness(shape)
    ccall((:sfCircleShape_getOutlineThickness, libcsfml_graphics), Cfloat, (Ptr{sfCircleShape},), shape)
end

function sfCircleShape_getPointCount(shape)
    ccall((:sfCircleShape_getPointCount, libcsfml_graphics), Csize_t, (Ptr{sfCircleShape},), shape)
end

function sfCircleShape_getPoint(shape, index)
    ccall((:sfCircleShape_getPoint, libcsfml_graphics), sfVector2f, (Ptr{sfCircleShape}, Csize_t), shape, index)
end

function sfCircleShape_setRadius(shape, radius)
    ccall((:sfCircleShape_setRadius, libcsfml_graphics), Cvoid, (Ptr{sfCircleShape}, Cfloat), shape, radius)
end

function sfCircleShape_getRadius(shape)
    ccall((:sfCircleShape_getRadius, libcsfml_graphics), Cfloat, (Ptr{sfCircleShape},), shape)
end

function sfCircleShape_setPointCount(shape, count)
    ccall((:sfCircleShape_setPointCount, libcsfml_graphics), Cvoid, (Ptr{sfCircleShape}, Csize_t), shape, count)
end

function sfCircleShape_getLocalBounds(shape)
    ccall((:sfCircleShape_getLocalBounds, libcsfml_graphics), sfFloatRect, (Ptr{sfCircleShape},), shape)
end

function sfCircleShape_getGlobalBounds(shape)
    ccall((:sfCircleShape_getGlobalBounds, libcsfml_graphics), sfFloatRect, (Ptr{sfCircleShape},), shape)
end
# Julia wrapper for header: Color.h
# Automatically generated using Clang.jl


function sfColor_fromRGB(red, green, blue)
    ccall((:sfColor_fromRGB, libcsfml_graphics), sfColor, (sfUint8, sfUint8, sfUint8), red, green, blue)
end

function sfColor_fromRGBA(red, green, blue, alpha)
    ccall((:sfColor_fromRGBA, libcsfml_graphics), sfColor, (sfUint8, sfUint8, sfUint8, sfUint8), red, green, blue, alpha)
end

function sfColor_fromInteger(color)
    ccall((:sfColor_fromInteger, libcsfml_graphics), sfColor, (sfUint32,), color)
end

function sfColor_toInteger(color)
    ccall((:sfColor_toInteger, libcsfml_graphics), sfUint32, (sfColor,), color)
end

function sfColor_add(color1, color2)
    ccall((:sfColor_add, libcsfml_graphics), sfColor, (sfColor, sfColor), color1, color2)
end

function sfColor_subtract(color1, color2)
    ccall((:sfColor_subtract, libcsfml_graphics), sfColor, (sfColor, sfColor), color1, color2)
end

function sfColor_modulate(color1, color2)
    ccall((:sfColor_modulate, libcsfml_graphics), sfColor, (sfColor, sfColor), color1, color2)
end
# Julia wrapper for header: ConvexShape.h
# Automatically generated using Clang.jl


function sfConvexShape_create()
    ccall((:sfConvexShape_create, libcsfml_graphics), Ptr{sfConvexShape}, ())
end

function sfConvexShape_copy(shape)
    ccall((:sfConvexShape_copy, libcsfml_graphics), Ptr{sfConvexShape}, (Ptr{sfConvexShape},), shape)
end

function sfConvexShape_destroy(shape)
    ccall((:sfConvexShape_destroy, libcsfml_graphics), Cvoid, (Ptr{sfConvexShape},), shape)
end

function sfConvexShape_setPosition(shape, position)
    ccall((:sfConvexShape_setPosition, libcsfml_graphics), Cvoid, (Ptr{sfConvexShape}, sfVector2f), shape, position)
end

function sfConvexShape_setRotation(shape, angle)
    ccall((:sfConvexShape_setRotation, libcsfml_graphics), Cvoid, (Ptr{sfConvexShape}, Cfloat), shape, angle)
end

function sfConvexShape_setScale(shape, scale)
    ccall((:sfConvexShape_setScale, libcsfml_graphics), Cvoid, (Ptr{sfConvexShape}, sfVector2f), shape, scale)
end

function sfConvexShape_setOrigin(shape, origin)
    ccall((:sfConvexShape_setOrigin, libcsfml_graphics), Cvoid, (Ptr{sfConvexShape}, sfVector2f), shape, origin)
end

function sfConvexShape_getPosition(shape)
    ccall((:sfConvexShape_getPosition, libcsfml_graphics), sfVector2f, (Ptr{sfConvexShape},), shape)
end

function sfConvexShape_getRotation(shape)
    ccall((:sfConvexShape_getRotation, libcsfml_graphics), Cfloat, (Ptr{sfConvexShape},), shape)
end

function sfConvexShape_getScale(shape)
    ccall((:sfConvexShape_getScale, libcsfml_graphics), sfVector2f, (Ptr{sfConvexShape},), shape)
end

function sfConvexShape_getOrigin(shape)
    ccall((:sfConvexShape_getOrigin, libcsfml_graphics), sfVector2f, (Ptr{sfConvexShape},), shape)
end

function sfConvexShape_move(shape, offset)
    ccall((:sfConvexShape_move, libcsfml_graphics), Cvoid, (Ptr{sfConvexShape}, sfVector2f), shape, offset)
end

function sfConvexShape_rotate(shape, angle)
    ccall((:sfConvexShape_rotate, libcsfml_graphics), Cvoid, (Ptr{sfConvexShape}, Cfloat), shape, angle)
end

function sfConvexShape_scale(shape, factors)
    ccall((:sfConvexShape_scale, libcsfml_graphics), Cvoid, (Ptr{sfConvexShape}, sfVector2f), shape, factors)
end

function sfConvexShape_getTransform(shape)
    ccall((:sfConvexShape_getTransform, libcsfml_graphics), sfTransform, (Ptr{sfConvexShape},), shape)
end

function sfConvexShape_getInverseTransform(shape)
    ccall((:sfConvexShape_getInverseTransform, libcsfml_graphics), sfTransform, (Ptr{sfConvexShape},), shape)
end

function sfConvexShape_setTexture(shape, texture, resetRect)
    ccall((:sfConvexShape_setTexture, libcsfml_graphics), Cvoid, (Ptr{sfConvexShape}, Ptr{sfTexture}, sfBool), shape, texture, resetRect)
end

function sfConvexShape_setTextureRect(shape, rect)
    ccall((:sfConvexShape_setTextureRect, libcsfml_graphics), Cvoid, (Ptr{sfConvexShape}, sfIntRect), shape, rect)
end

function sfConvexShape_setFillColor(shape, color)
    ccall((:sfConvexShape_setFillColor, libcsfml_graphics), Cvoid, (Ptr{sfConvexShape}, sfColor), shape, color)
end

function sfConvexShape_setOutlineColor(shape, color)
    ccall((:sfConvexShape_setOutlineColor, libcsfml_graphics), Cvoid, (Ptr{sfConvexShape}, sfColor), shape, color)
end

function sfConvexShape_setOutlineThickness(shape, thickness)
    ccall((:sfConvexShape_setOutlineThickness, libcsfml_graphics), Cvoid, (Ptr{sfConvexShape}, Cfloat), shape, thickness)
end

function sfConvexShape_getTexture(shape)
    ccall((:sfConvexShape_getTexture, libcsfml_graphics), Ptr{sfTexture}, (Ptr{sfConvexShape},), shape)
end

function sfConvexShape_getTextureRect(shape)
    ccall((:sfConvexShape_getTextureRect, libcsfml_graphics), sfIntRect, (Ptr{sfConvexShape},), shape)
end

function sfConvexShape_getFillColor(shape)
    ccall((:sfConvexShape_getFillColor, libcsfml_graphics), sfColor, (Ptr{sfConvexShape},), shape)
end

function sfConvexShape_getOutlineColor(shape)
    ccall((:sfConvexShape_getOutlineColor, libcsfml_graphics), sfColor, (Ptr{sfConvexShape},), shape)
end

function sfConvexShape_getOutlineThickness(shape)
    ccall((:sfConvexShape_getOutlineThickness, libcsfml_graphics), Cfloat, (Ptr{sfConvexShape},), shape)
end

function sfConvexShape_getPointCount(shape)
    ccall((:sfConvexShape_getPointCount, libcsfml_graphics), Csize_t, (Ptr{sfConvexShape},), shape)
end

function sfConvexShape_getPoint(shape, index)
    ccall((:sfConvexShape_getPoint, libcsfml_graphics), sfVector2f, (Ptr{sfConvexShape}, Csize_t), shape, index)
end

function sfConvexShape_setPointCount(shape, count)
    ccall((:sfConvexShape_setPointCount, libcsfml_graphics), Cvoid, (Ptr{sfConvexShape}, Csize_t), shape, count)
end

function sfConvexShape_setPoint(shape, index, point)
    ccall((:sfConvexShape_setPoint, libcsfml_graphics), Cvoid, (Ptr{sfConvexShape}, Csize_t, sfVector2f), shape, index, point)
end

function sfConvexShape_getLocalBounds(shape)
    ccall((:sfConvexShape_getLocalBounds, libcsfml_graphics), sfFloatRect, (Ptr{sfConvexShape},), shape)
end

function sfConvexShape_getGlobalBounds(shape)
    ccall((:sfConvexShape_getGlobalBounds, libcsfml_graphics), sfFloatRect, (Ptr{sfConvexShape},), shape)
end
# Julia wrapper for header: Export.h
# Automatically generated using Clang.jl

# Julia wrapper for header: Font.h
# Automatically generated using Clang.jl


function sfFont_createFromFile(filename)
    ccall((:sfFont_createFromFile, libcsfml_graphics), Ptr{sfFont}, (Cstring,), filename)
end

function sfFont_createFromMemory(data, sizeInBytes)
    ccall((:sfFont_createFromMemory, libcsfml_graphics), Ptr{sfFont}, (Ptr{Cvoid}, Csize_t), data, sizeInBytes)
end

function sfFont_createFromStream(stream)
    ccall((:sfFont_createFromStream, libcsfml_graphics), Ptr{sfFont}, (Ptr{sfInputStream},), stream)
end

function sfFont_copy(font)
    ccall((:sfFont_copy, libcsfml_graphics), Ptr{sfFont}, (Ptr{sfFont},), font)
end

function sfFont_destroy(font)
    ccall((:sfFont_destroy, libcsfml_graphics), Cvoid, (Ptr{sfFont},), font)
end

function sfFont_getGlyph(font, codePoint, characterSize, bold, outlineThickness)
    ccall((:sfFont_getGlyph, libcsfml_graphics), sfGlyph, (Ptr{sfFont}, sfUint32, UInt32, sfBool, Cfloat), font, codePoint, characterSize, bold, outlineThickness)
end

function sfFont_getKerning(font, first, second, characterSize)
    ccall((:sfFont_getKerning, libcsfml_graphics), Cfloat, (Ptr{sfFont}, sfUint32, sfUint32, UInt32), font, first, second, characterSize)
end

function sfFont_getLineSpacing(font, characterSize)
    ccall((:sfFont_getLineSpacing, libcsfml_graphics), Cfloat, (Ptr{sfFont}, UInt32), font, characterSize)
end

function sfFont_getUnderlinePosition(font, characterSize)
    ccall((:sfFont_getUnderlinePosition, libcsfml_graphics), Cfloat, (Ptr{sfFont}, UInt32), font, characterSize)
end

function sfFont_getUnderlineThickness(font, characterSize)
    ccall((:sfFont_getUnderlineThickness, libcsfml_graphics), Cfloat, (Ptr{sfFont}, UInt32), font, characterSize)
end

function sfFont_getTexture(font, characterSize)
    ccall((:sfFont_getTexture, libcsfml_graphics), Ptr{sfTexture}, (Ptr{sfFont}, UInt32), font, characterSize)
end

function sfFont_getInfo(font)
    ccall((:sfFont_getInfo, libcsfml_graphics), sfFontInfo, (Ptr{sfFont},), font)
end
# Julia wrapper for header: FontInfo.h
# Automatically generated using Clang.jl

# Julia wrapper for header: Glsl.h
# Automatically generated using Clang.jl

# Julia wrapper for header: Glyph.h
# Automatically generated using Clang.jl

# Julia wrapper for header: Image.h
# Automatically generated using Clang.jl


function sfImage_create(width, height)
    ccall((:sfImage_create, libcsfml_graphics), Ptr{sfImage}, (UInt32, UInt32), width, height)
end

function sfImage_createFromColor(width, height, color)
    ccall((:sfImage_createFromColor, libcsfml_graphics), Ptr{sfImage}, (UInt32, UInt32, sfColor), width, height, color)
end

function sfImage_createFromPixels(width, height, pixels)
    ccall((:sfImage_createFromPixels, libcsfml_graphics), Ptr{sfImage}, (UInt32, UInt32, Ptr{sfUint8}), width, height, pixels)
end

function sfImage_createFromFile(filename)
    ccall((:sfImage_createFromFile, libcsfml_graphics), Ptr{sfImage}, (Cstring,), filename)
end

function sfImage_createFromMemory(data, size)
    ccall((:sfImage_createFromMemory, libcsfml_graphics), Ptr{sfImage}, (Ptr{Cvoid}, Csize_t), data, size)
end

function sfImage_createFromStream(stream)
    ccall((:sfImage_createFromStream, libcsfml_graphics), Ptr{sfImage}, (Ptr{sfInputStream},), stream)
end

function sfImage_copy(image)
    ccall((:sfImage_copy, libcsfml_graphics), Ptr{sfImage}, (Ptr{sfImage},), image)
end

function sfImage_destroy(image)
    ccall((:sfImage_destroy, libcsfml_graphics), Cvoid, (Ptr{sfImage},), image)
end

function sfImage_saveToFile(image, filename)
    ccall((:sfImage_saveToFile, libcsfml_graphics), sfBool, (Ptr{sfImage}, Cstring), image, filename)
end

function sfImage_getSize(image)
    ccall((:sfImage_getSize, libcsfml_graphics), sfVector2u, (Ptr{sfImage},), image)
end

function sfImage_createMaskFromColor(image, color, alpha)
    ccall((:sfImage_createMaskFromColor, libcsfml_graphics), Cvoid, (Ptr{sfImage}, sfColor, sfUint8), image, color, alpha)
end

function sfImage_copyImage(image, source, destX, destY, sourceRect, applyAlpha)
    ccall((:sfImage_copyImage, libcsfml_graphics), Cvoid, (Ptr{sfImage}, Ptr{sfImage}, UInt32, UInt32, sfIntRect, sfBool), image, source, destX, destY, sourceRect, applyAlpha)
end

function sfImage_setPixel(image, x, y, color)
    ccall((:sfImage_setPixel, libcsfml_graphics), Cvoid, (Ptr{sfImage}, UInt32, UInt32, sfColor), image, x, y, color)
end

function sfImage_getPixel(image, x, y)
    ccall((:sfImage_getPixel, libcsfml_graphics), sfColor, (Ptr{sfImage}, UInt32, UInt32), image, x, y)
end

function sfImage_getPixelsPtr(image)
    ccall((:sfImage_getPixelsPtr, libcsfml_graphics), Ptr{sfUint8}, (Ptr{sfImage},), image)
end

function sfImage_flipHorizontally(image)
    ccall((:sfImage_flipHorizontally, libcsfml_graphics), Cvoid, (Ptr{sfImage},), image)
end

function sfImage_flipVertically(image)
    ccall((:sfImage_flipVertically, libcsfml_graphics), Cvoid, (Ptr{sfImage},), image)
end
# Julia wrapper for header: PrimitiveType.h
# Automatically generated using Clang.jl

# Julia wrapper for header: Rect.h
# Automatically generated using Clang.jl


function sfFloatRect_contains(rect, x, y)
    ccall((:sfFloatRect_contains, libcsfml_graphics), sfBool, (Ptr{sfFloatRect}, Cfloat, Cfloat), rect, x, y)
end

function sfIntRect_contains(rect, x, y)
    ccall((:sfIntRect_contains, libcsfml_graphics), sfBool, (Ptr{sfIntRect}, Cint, Cint), rect, x, y)
end

function sfFloatRect_intersects(rect1, rect2, intersection)
    ccall((:sfFloatRect_intersects, libcsfml_graphics), sfBool, (Ptr{sfFloatRect}, Ptr{sfFloatRect}, Ptr{sfFloatRect}), rect1, rect2, intersection)
end

function sfIntRect_intersects(rect1, rect2, intersection)
    ccall((:sfIntRect_intersects, libcsfml_graphics), sfBool, (Ptr{sfIntRect}, Ptr{sfIntRect}, Ptr{sfIntRect}), rect1, rect2, intersection)
end
# Julia wrapper for header: RectangleShape.h
# Automatically generated using Clang.jl


function sfRectangleShape_create()
    ccall((:sfRectangleShape_create, libcsfml_graphics), Ptr{sfRectangleShape}, ())
end

function sfRectangleShape_copy(shape)
    ccall((:sfRectangleShape_copy, libcsfml_graphics), Ptr{sfRectangleShape}, (Ptr{sfRectangleShape},), shape)
end

function sfRectangleShape_destroy(shape)
    ccall((:sfRectangleShape_destroy, libcsfml_graphics), Cvoid, (Ptr{sfRectangleShape},), shape)
end

function sfRectangleShape_setPosition(shape, position)
    ccall((:sfRectangleShape_setPosition, libcsfml_graphics), Cvoid, (Ptr{sfRectangleShape}, sfVector2f), shape, position)
end

function sfRectangleShape_setRotation(shape, angle)
    ccall((:sfRectangleShape_setRotation, libcsfml_graphics), Cvoid, (Ptr{sfRectangleShape}, Cfloat), shape, angle)
end

function sfRectangleShape_setScale(shape, scale)
    ccall((:sfRectangleShape_setScale, libcsfml_graphics), Cvoid, (Ptr{sfRectangleShape}, sfVector2f), shape, scale)
end

function sfRectangleShape_setOrigin(shape, origin)
    ccall((:sfRectangleShape_setOrigin, libcsfml_graphics), Cvoid, (Ptr{sfRectangleShape}, sfVector2f), shape, origin)
end

function sfRectangleShape_getPosition(shape)
    ccall((:sfRectangleShape_getPosition, libcsfml_graphics), sfVector2f, (Ptr{sfRectangleShape},), shape)
end

function sfRectangleShape_getRotation(shape)
    ccall((:sfRectangleShape_getRotation, libcsfml_graphics), Cfloat, (Ptr{sfRectangleShape},), shape)
end

function sfRectangleShape_getScale(shape)
    ccall((:sfRectangleShape_getScale, libcsfml_graphics), sfVector2f, (Ptr{sfRectangleShape},), shape)
end

function sfRectangleShape_getOrigin(shape)
    ccall((:sfRectangleShape_getOrigin, libcsfml_graphics), sfVector2f, (Ptr{sfRectangleShape},), shape)
end

function sfRectangleShape_move(shape, offset)
    ccall((:sfRectangleShape_move, libcsfml_graphics), Cvoid, (Ptr{sfRectangleShape}, sfVector2f), shape, offset)
end

function sfRectangleShape_rotate(shape, angle)
    ccall((:sfRectangleShape_rotate, libcsfml_graphics), Cvoid, (Ptr{sfRectangleShape}, Cfloat), shape, angle)
end

function sfRectangleShape_scale(shape, factors)
    ccall((:sfRectangleShape_scale, libcsfml_graphics), Cvoid, (Ptr{sfRectangleShape}, sfVector2f), shape, factors)
end

function sfRectangleShape_getTransform(shape)
    ccall((:sfRectangleShape_getTransform, libcsfml_graphics), sfTransform, (Ptr{sfRectangleShape},), shape)
end

function sfRectangleShape_getInverseTransform(shape)
    ccall((:sfRectangleShape_getInverseTransform, libcsfml_graphics), sfTransform, (Ptr{sfRectangleShape},), shape)
end

function sfRectangleShape_setTexture(shape, texture, resetRect)
    ccall((:sfRectangleShape_setTexture, libcsfml_graphics), Cvoid, (Ptr{sfRectangleShape}, Ptr{sfTexture}, sfBool), shape, texture, resetRect)
end

function sfRectangleShape_setTextureRect(shape, rect)
    ccall((:sfRectangleShape_setTextureRect, libcsfml_graphics), Cvoid, (Ptr{sfRectangleShape}, sfIntRect), shape, rect)
end

function sfRectangleShape_setFillColor(shape, color)
    ccall((:sfRectangleShape_setFillColor, libcsfml_graphics), Cvoid, (Ptr{sfRectangleShape}, sfColor), shape, color)
end

function sfRectangleShape_setOutlineColor(shape, color)
    ccall((:sfRectangleShape_setOutlineColor, libcsfml_graphics), Cvoid, (Ptr{sfRectangleShape}, sfColor), shape, color)
end

function sfRectangleShape_setOutlineThickness(shape, thickness)
    ccall((:sfRectangleShape_setOutlineThickness, libcsfml_graphics), Cvoid, (Ptr{sfRectangleShape}, Cfloat), shape, thickness)
end

function sfRectangleShape_getTexture(shape)
    ccall((:sfRectangleShape_getTexture, libcsfml_graphics), Ptr{sfTexture}, (Ptr{sfRectangleShape},), shape)
end

function sfRectangleShape_getTextureRect(shape)
    ccall((:sfRectangleShape_getTextureRect, libcsfml_graphics), sfIntRect, (Ptr{sfRectangleShape},), shape)
end

function sfRectangleShape_getFillColor(shape)
    ccall((:sfRectangleShape_getFillColor, libcsfml_graphics), sfColor, (Ptr{sfRectangleShape},), shape)
end

function sfRectangleShape_getOutlineColor(shape)
    ccall((:sfRectangleShape_getOutlineColor, libcsfml_graphics), sfColor, (Ptr{sfRectangleShape},), shape)
end

function sfRectangleShape_getOutlineThickness(shape)
    ccall((:sfRectangleShape_getOutlineThickness, libcsfml_graphics), Cfloat, (Ptr{sfRectangleShape},), shape)
end

function sfRectangleShape_getPointCount(shape)
    ccall((:sfRectangleShape_getPointCount, libcsfml_graphics), Csize_t, (Ptr{sfRectangleShape},), shape)
end

function sfRectangleShape_getPoint(shape, index)
    ccall((:sfRectangleShape_getPoint, libcsfml_graphics), sfVector2f, (Ptr{sfRectangleShape}, Csize_t), shape, index)
end

function sfRectangleShape_setSize(shape, size)
    ccall((:sfRectangleShape_setSize, libcsfml_graphics), Cvoid, (Ptr{sfRectangleShape}, sfVector2f), shape, size)
end

function sfRectangleShape_getSize(shape)
    ccall((:sfRectangleShape_getSize, libcsfml_graphics), sfVector2f, (Ptr{sfRectangleShape},), shape)
end

function sfRectangleShape_getLocalBounds(shape)
    ccall((:sfRectangleShape_getLocalBounds, libcsfml_graphics), sfFloatRect, (Ptr{sfRectangleShape},), shape)
end

function sfRectangleShape_getGlobalBounds(shape)
    ccall((:sfRectangleShape_getGlobalBounds, libcsfml_graphics), sfFloatRect, (Ptr{sfRectangleShape},), shape)
end
# Julia wrapper for header: RenderStates.h
# Automatically generated using Clang.jl

# Julia wrapper for header: RenderTexture.h
# Automatically generated using Clang.jl


function sfRenderTexture_create(width, height, depthBuffer)
    ccall((:sfRenderTexture_create, libcsfml_graphics), Ptr{sfRenderTexture}, (UInt32, UInt32, sfBool), width, height, depthBuffer)
end

function sfRenderTexture_createWithSettings(width, height, settings)
    ccall((:sfRenderTexture_createWithSettings, libcsfml_graphics), Ptr{sfRenderTexture}, (UInt32, UInt32, sfContextSettings), width, height, settings)
end

function sfRenderTexture_destroy(renderTexture)
    ccall((:sfRenderTexture_destroy, libcsfml_graphics), Cvoid, (Ptr{sfRenderTexture},), renderTexture)
end

function sfRenderTexture_getSize(renderTexture)
    ccall((:sfRenderTexture_getSize, libcsfml_graphics), sfVector2u, (Ptr{sfRenderTexture},), renderTexture)
end

function sfRenderTexture_setActive(renderTexture, active)
    ccall((:sfRenderTexture_setActive, libcsfml_graphics), sfBool, (Ptr{sfRenderTexture}, sfBool), renderTexture, active)
end

function sfRenderTexture_display(renderTexture)
    ccall((:sfRenderTexture_display, libcsfml_graphics), Cvoid, (Ptr{sfRenderTexture},), renderTexture)
end

function sfRenderTexture_clear(renderTexture, color)
    ccall((:sfRenderTexture_clear, libcsfml_graphics), Cvoid, (Ptr{sfRenderTexture}, sfColor), renderTexture, color)
end

function sfRenderTexture_setView(renderTexture, view)
    ccall((:sfRenderTexture_setView, libcsfml_graphics), Cvoid, (Ptr{sfRenderTexture}, Ptr{sfView}), renderTexture, view)
end

function sfRenderTexture_getView(renderTexture)
    ccall((:sfRenderTexture_getView, libcsfml_graphics), Ptr{sfView}, (Ptr{sfRenderTexture},), renderTexture)
end

function sfRenderTexture_getDefaultView(renderTexture)
    ccall((:sfRenderTexture_getDefaultView, libcsfml_graphics), Ptr{sfView}, (Ptr{sfRenderTexture},), renderTexture)
end

function sfRenderTexture_getViewport(renderTexture, view)
    ccall((:sfRenderTexture_getViewport, libcsfml_graphics), sfIntRect, (Ptr{sfRenderTexture}, Ptr{sfView}), renderTexture, view)
end

function sfRenderTexture_mapPixelToCoords(renderTexture, point, view)
    ccall((:sfRenderTexture_mapPixelToCoords, libcsfml_graphics), sfVector2f, (Ptr{sfRenderTexture}, sfVector2i, Ptr{sfView}), renderTexture, point, view)
end

function sfRenderTexture_mapCoordsToPixel(renderTexture, point, view)
    ccall((:sfRenderTexture_mapCoordsToPixel, libcsfml_graphics), sfVector2i, (Ptr{sfRenderTexture}, sfVector2f, Ptr{sfView}), renderTexture, point, view)
end

function sfRenderTexture_drawSprite(renderTexture, object, states)
    ccall((:sfRenderTexture_drawSprite, libcsfml_graphics), Cvoid, (Ptr{sfRenderTexture}, Ptr{sfSprite}, Ptr{sfRenderStates}), renderTexture, object, states)
end

function sfRenderTexture_drawText(renderTexture, object, states)
    ccall((:sfRenderTexture_drawText, libcsfml_graphics), Cvoid, (Ptr{sfRenderTexture}, Ptr{sfText}, Ptr{sfRenderStates}), renderTexture, object, states)
end

function sfRenderTexture_drawShape(renderTexture, object, states)
    ccall((:sfRenderTexture_drawShape, libcsfml_graphics), Cvoid, (Ptr{sfRenderTexture}, Ptr{sfShape}, Ptr{sfRenderStates}), renderTexture, object, states)
end

function sfRenderTexture_drawCircleShape(renderTexture, object, states)
    ccall((:sfRenderTexture_drawCircleShape, libcsfml_graphics), Cvoid, (Ptr{sfRenderTexture}, Ptr{sfCircleShape}, Ptr{sfRenderStates}), renderTexture, object, states)
end

function sfRenderTexture_drawConvexShape(renderTexture, object, states)
    ccall((:sfRenderTexture_drawConvexShape, libcsfml_graphics), Cvoid, (Ptr{sfRenderTexture}, Ptr{sfConvexShape}, Ptr{sfRenderStates}), renderTexture, object, states)
end

function sfRenderTexture_drawRectangleShape(renderTexture, object, states)
    ccall((:sfRenderTexture_drawRectangleShape, libcsfml_graphics), Cvoid, (Ptr{sfRenderTexture}, Ptr{sfRectangleShape}, Ptr{sfRenderStates}), renderTexture, object, states)
end

function sfRenderTexture_drawVertexArray(renderTexture, object, states)
    ccall((:sfRenderTexture_drawVertexArray, libcsfml_graphics), Cvoid, (Ptr{sfRenderTexture}, Ptr{sfVertexArray}, Ptr{sfRenderStates}), renderTexture, object, states)
end

function sfRenderTexture_drawVertexBuffer(renderTexture, object, states)
    ccall((:sfRenderTexture_drawVertexBuffer, libcsfml_graphics), Cvoid, (Ptr{sfRenderTexture}, Ptr{sfVertexBuffer}, Ptr{sfRenderStates}), renderTexture, object, states)
end

function sfRenderTexture_drawPrimitives(renderTexture, vertices, vertexCount, type, states)
    ccall((:sfRenderTexture_drawPrimitives, libcsfml_graphics), Cvoid, (Ptr{sfRenderTexture}, Ptr{sfVertex}, Csize_t, sfPrimitiveType, Ptr{sfRenderStates}), renderTexture, vertices, vertexCount, type, states)
end

function sfRenderTexture_pushGLStates(renderTexture)
    ccall((:sfRenderTexture_pushGLStates, libcsfml_graphics), Cvoid, (Ptr{sfRenderTexture},), renderTexture)
end

function sfRenderTexture_popGLStates(renderTexture)
    ccall((:sfRenderTexture_popGLStates, libcsfml_graphics), Cvoid, (Ptr{sfRenderTexture},), renderTexture)
end

function sfRenderTexture_resetGLStates(renderTexture)
    ccall((:sfRenderTexture_resetGLStates, libcsfml_graphics), Cvoid, (Ptr{sfRenderTexture},), renderTexture)
end

function sfRenderTexture_getTexture(renderTexture)
    ccall((:sfRenderTexture_getTexture, libcsfml_graphics), Ptr{sfTexture}, (Ptr{sfRenderTexture},), renderTexture)
end

function sfRenderTexture_getMaximumAntialiasingLevel()
    ccall((:sfRenderTexture_getMaximumAntialiasingLevel, libcsfml_graphics), UInt32, ())
end

function sfRenderTexture_setSmooth(renderTexture, smooth)
    ccall((:sfRenderTexture_setSmooth, libcsfml_graphics), Cvoid, (Ptr{sfRenderTexture}, sfBool), renderTexture, smooth)
end

function sfRenderTexture_isSmooth(renderTexture)
    ccall((:sfRenderTexture_isSmooth, libcsfml_graphics), sfBool, (Ptr{sfRenderTexture},), renderTexture)
end

function sfRenderTexture_setRepeated(renderTexture, repeated)
    ccall((:sfRenderTexture_setRepeated, libcsfml_graphics), Cvoid, (Ptr{sfRenderTexture}, sfBool), renderTexture, repeated)
end

function sfRenderTexture_isRepeated(renderTexture)
    ccall((:sfRenderTexture_isRepeated, libcsfml_graphics), sfBool, (Ptr{sfRenderTexture},), renderTexture)
end

function sfRenderTexture_generateMipmap(renderTexture)
    ccall((:sfRenderTexture_generateMipmap, libcsfml_graphics), sfBool, (Ptr{sfRenderTexture},), renderTexture)
end
# Julia wrapper for header: RenderWindow.h
# Automatically generated using Clang.jl


function sfRenderWindow_create(mode, title, style, settings)
    ccall((:sfRenderWindow_create, libcsfml_graphics), Ptr{sfRenderWindow}, (sfVideoMode, Cstring, sfUint32, Ptr{sfContextSettings}), mode, title, style, settings)
end

function sfRenderWindow_createUnicode(mode, title, style, settings)
    ccall((:sfRenderWindow_createUnicode, libcsfml_graphics), Ptr{sfRenderWindow}, (sfVideoMode, Ptr{sfUint32}, sfUint32, Ptr{sfContextSettings}), mode, title, style, settings)
end

function sfRenderWindow_createFromHandle(handle, settings)
    ccall((:sfRenderWindow_createFromHandle, libcsfml_graphics), Ptr{sfRenderWindow}, (sfWindowHandle, Ptr{sfContextSettings}), handle, settings)
end

function sfRenderWindow_destroy(renderWindow)
    ccall((:sfRenderWindow_destroy, libcsfml_graphics), Cvoid, (Ptr{sfRenderWindow},), renderWindow)
end

function sfRenderWindow_close(renderWindow)
    ccall((:sfRenderWindow_close, libcsfml_graphics), Cvoid, (Ptr{sfRenderWindow},), renderWindow)
end

function sfRenderWindow_isOpen(renderWindow)
    ccall((:sfRenderWindow_isOpen, libcsfml_graphics), sfBool, (Ptr{sfRenderWindow},), renderWindow)
end

function sfRenderWindow_getSettings(renderWindow)
    ccall((:sfRenderWindow_getSettings, libcsfml_graphics), sfContextSettings, (Ptr{sfRenderWindow},), renderWindow)
end

function sfRenderWindow_pollEvent(renderWindow, event)
    ccall((:sfRenderWindow_pollEvent, libcsfml_graphics), sfBool, (Ptr{sfRenderWindow}, Ptr{sfEvent}), renderWindow, event)
end

function sfRenderWindow_waitEvent(renderWindow, event)
    ccall((:sfRenderWindow_waitEvent, libcsfml_graphics), sfBool, (Ptr{sfRenderWindow}, Ptr{sfEvent}), renderWindow, event)
end

function sfRenderWindow_getPosition(renderWindow)
    ccall((:sfRenderWindow_getPosition, libcsfml_graphics), sfVector2i, (Ptr{sfRenderWindow},), renderWindow)
end

function sfRenderWindow_setPosition(renderWindow, position)
    ccall((:sfRenderWindow_setPosition, libcsfml_graphics), Cvoid, (Ptr{sfRenderWindow}, sfVector2i), renderWindow, position)
end

function sfRenderWindow_getSize(renderWindow)
    ccall((:sfRenderWindow_getSize, libcsfml_graphics), sfVector2u, (Ptr{sfRenderWindow},), renderWindow)
end

function sfRenderWindow_setSize(renderWindow, size)
    ccall((:sfRenderWindow_setSize, libcsfml_graphics), Cvoid, (Ptr{sfRenderWindow}, sfVector2u), renderWindow, size)
end

function sfRenderWindow_setTitle(renderWindow, title)
    ccall((:sfRenderWindow_setTitle, libcsfml_graphics), Cvoid, (Ptr{sfRenderWindow}, Cstring), renderWindow, title)
end

function sfRenderWindow_setUnicodeTitle(renderWindow, title)
    ccall((:sfRenderWindow_setUnicodeTitle, libcsfml_graphics), Cvoid, (Ptr{sfRenderWindow}, Ptr{sfUint32}), renderWindow, title)
end

function sfRenderWindow_setIcon(renderWindow, width, height, pixels)
    ccall((:sfRenderWindow_setIcon, libcsfml_graphics), Cvoid, (Ptr{sfRenderWindow}, UInt32, UInt32, Ptr{sfUint8}), renderWindow, width, height, pixels)
end

function sfRenderWindow_setVisible(renderWindow, visible)
    ccall((:sfRenderWindow_setVisible, libcsfml_graphics), Cvoid, (Ptr{sfRenderWindow}, sfBool), renderWindow, visible)
end

function sfRenderWindow_setVerticalSyncEnabled(renderWindow, enabled)
    ccall((:sfRenderWindow_setVerticalSyncEnabled, libcsfml_graphics), Cvoid, (Ptr{sfRenderWindow}, sfBool), renderWindow, enabled)
end

function sfRenderWindow_setMouseCursorVisible(renderWindow, show)
    ccall((:sfRenderWindow_setMouseCursorVisible, libcsfml_graphics), Cvoid, (Ptr{sfRenderWindow}, sfBool), renderWindow, show)
end

function sfRenderWindow_setMouseCursorGrabbed(renderWindow, grabbed)
    ccall((:sfRenderWindow_setMouseCursorGrabbed, libcsfml_graphics), Cvoid, (Ptr{sfRenderWindow}, sfBool), renderWindow, grabbed)
end

function sfRenderWindow_setMouseCursor(window, cursor)
    ccall((:sfRenderWindow_setMouseCursor, libcsfml_graphics), Cvoid, (Ptr{sfRenderWindow}, Ptr{sfCursor}), window, cursor)
end

function sfRenderWindow_setKeyRepeatEnabled(renderWindow, enabled)
    ccall((:sfRenderWindow_setKeyRepeatEnabled, libcsfml_graphics), Cvoid, (Ptr{sfRenderWindow}, sfBool), renderWindow, enabled)
end

function sfRenderWindow_setFramerateLimit(renderWindow, limit)
    ccall((:sfRenderWindow_setFramerateLimit, libcsfml_graphics), Cvoid, (Ptr{sfRenderWindow}, UInt32), renderWindow, limit)
end

function sfRenderWindow_setJoystickThreshold(renderWindow, threshold)
    ccall((:sfRenderWindow_setJoystickThreshold, libcsfml_graphics), Cvoid, (Ptr{sfRenderWindow}, Cfloat), renderWindow, threshold)
end

function sfRenderWindow_setActive(renderWindow, active)
    ccall((:sfRenderWindow_setActive, libcsfml_graphics), sfBool, (Ptr{sfRenderWindow}, sfBool), renderWindow, active)
end

function sfRenderWindow_requestFocus(renderWindow)
    ccall((:sfRenderWindow_requestFocus, libcsfml_graphics), Cvoid, (Ptr{sfRenderWindow},), renderWindow)
end

function sfRenderWindow_hasFocus(renderWindow)
    ccall((:sfRenderWindow_hasFocus, libcsfml_graphics), sfBool, (Ptr{sfRenderWindow},), renderWindow)
end

function sfRenderWindow_display(renderWindow)
    ccall((:sfRenderWindow_display, libcsfml_graphics), Cvoid, (Ptr{sfRenderWindow},), renderWindow)
end

function sfRenderWindow_getSystemHandle(renderWindow)
    ccall((:sfRenderWindow_getSystemHandle, libcsfml_graphics), sfWindowHandle, (Ptr{sfRenderWindow},), renderWindow)
end

function sfRenderWindow_clear(renderWindow, color)
    ccall((:sfRenderWindow_clear, libcsfml_graphics), Cvoid, (Ptr{sfRenderWindow}, sfColor), renderWindow, color)
end

function sfRenderWindow_setView(renderWindow, view)
    ccall((:sfRenderWindow_setView, libcsfml_graphics), Cvoid, (Ptr{sfRenderWindow}, Ptr{sfView}), renderWindow, view)
end

function sfRenderWindow_getView(renderWindow)
    ccall((:sfRenderWindow_getView, libcsfml_graphics), Ptr{sfView}, (Ptr{sfRenderWindow},), renderWindow)
end

function sfRenderWindow_getDefaultView(renderWindow)
    ccall((:sfRenderWindow_getDefaultView, libcsfml_graphics), Ptr{sfView}, (Ptr{sfRenderWindow},), renderWindow)
end

function sfRenderWindow_getViewport(renderWindow, view)
    ccall((:sfRenderWindow_getViewport, libcsfml_graphics), sfIntRect, (Ptr{sfRenderWindow}, Ptr{sfView}), renderWindow, view)
end

function sfRenderWindow_mapPixelToCoords(renderWindow, point, view)
    ccall((:sfRenderWindow_mapPixelToCoords, libcsfml_graphics), sfVector2f, (Ptr{sfRenderWindow}, sfVector2i, Ptr{sfView}), renderWindow, point, view)
end

function sfRenderWindow_mapCoordsToPixel(renderWindow, point, view)
    ccall((:sfRenderWindow_mapCoordsToPixel, libcsfml_graphics), sfVector2i, (Ptr{sfRenderWindow}, sfVector2f, Ptr{sfView}), renderWindow, point, view)
end

function sfRenderWindow_drawSprite(renderWindow, object, states)
    ccall((:sfRenderWindow_drawSprite, libcsfml_graphics), Cvoid, (Ptr{sfRenderWindow}, Ptr{sfSprite}, Ptr{sfRenderStates}), renderWindow, object, states)
end

function sfRenderWindow_drawText(renderWindow, object, states)
    ccall((:sfRenderWindow_drawText, libcsfml_graphics), Cvoid, (Ptr{sfRenderWindow}, Ptr{sfText}, Ptr{sfRenderStates}), renderWindow, object, states)
end

function sfRenderWindow_drawShape(renderWindow, object, states)
    ccall((:sfRenderWindow_drawShape, libcsfml_graphics), Cvoid, (Ptr{sfRenderWindow}, Ptr{sfShape}, Ptr{sfRenderStates}), renderWindow, object, states)
end

function sfRenderWindow_drawCircleShape(renderWindow, object, states)
    ccall((:sfRenderWindow_drawCircleShape, libcsfml_graphics), Cvoid, (Ptr{sfRenderWindow}, Ptr{sfCircleShape}, Ptr{sfRenderStates}), renderWindow, object, states)
end

function sfRenderWindow_drawConvexShape(renderWindow, object, states)
    ccall((:sfRenderWindow_drawConvexShape, libcsfml_graphics), Cvoid, (Ptr{sfRenderWindow}, Ptr{sfConvexShape}, Ptr{sfRenderStates}), renderWindow, object, states)
end

function sfRenderWindow_drawRectangleShape(renderWindow, object, states)
    ccall((:sfRenderWindow_drawRectangleShape, libcsfml_graphics), Cvoid, (Ptr{sfRenderWindow}, Ptr{sfRectangleShape}, Ptr{sfRenderStates}), renderWindow, object, states)
end

function sfRenderWindow_drawVertexArray(renderWindow, object, states)
    ccall((:sfRenderWindow_drawVertexArray, libcsfml_graphics), Cvoid, (Ptr{sfRenderWindow}, Ptr{sfVertexArray}, Ptr{sfRenderStates}), renderWindow, object, states)
end

function sfRenderWindow_drawVertexBuffer(renderWindow, object, states)
    ccall((:sfRenderWindow_drawVertexBuffer, libcsfml_graphics), Cvoid, (Ptr{sfRenderWindow}, Ptr{sfVertexBuffer}, Ptr{sfRenderStates}), renderWindow, object, states)
end

function sfRenderWindow_drawPrimitives(renderWindow, vertices, vertexCount, type, states)
    ccall((:sfRenderWindow_drawPrimitives, libcsfml_graphics), Cvoid, (Ptr{sfRenderWindow}, Ptr{sfVertex}, Csize_t, sfPrimitiveType, Ptr{sfRenderStates}), renderWindow, vertices, vertexCount, type, states)
end

function sfRenderWindow_pushGLStates(renderWindow)
    ccall((:sfRenderWindow_pushGLStates, libcsfml_graphics), Cvoid, (Ptr{sfRenderWindow},), renderWindow)
end

function sfRenderWindow_popGLStates(renderWindow)
    ccall((:sfRenderWindow_popGLStates, libcsfml_graphics), Cvoid, (Ptr{sfRenderWindow},), renderWindow)
end

function sfRenderWindow_resetGLStates(renderWindow)
    ccall((:sfRenderWindow_resetGLStates, libcsfml_graphics), Cvoid, (Ptr{sfRenderWindow},), renderWindow)
end

function sfRenderWindow_capture(renderWindow)
    ccall((:sfRenderWindow_capture, libcsfml_graphics), Ptr{sfImage}, (Ptr{sfRenderWindow},), renderWindow)
end

function sfMouse_getPositionRenderWindow(relativeTo)
    ccall((:sfMouse_getPositionRenderWindow, libcsfml_graphics), sfVector2i, (Ptr{sfRenderWindow},), relativeTo)
end

function sfMouse_setPositionRenderWindow(position, relativeTo)
    ccall((:sfMouse_setPositionRenderWindow, libcsfml_graphics), Cvoid, (sfVector2i, Ptr{sfRenderWindow}), position, relativeTo)
end

function sfTouch_getPositionRenderWindow(finger, relativeTo)
    ccall((:sfTouch_getPositionRenderWindow, libcsfml_graphics), sfVector2i, (UInt32, Ptr{sfRenderWindow}), finger, relativeTo)
end
# Julia wrapper for header: Shader.h
# Automatically generated using Clang.jl


function sfShader_createFromFile(vertexShaderFilename, geometryShaderFilename, fragmentShaderFilename)
    ccall((:sfShader_createFromFile, libcsfml_graphics), Ptr{sfShader}, (Cstring, Cstring, Cstring), vertexShaderFilename, geometryShaderFilename, fragmentShaderFilename)
end

function sfShader_createFromMemory(vertexShader, geometryShader, fragmentShader)
    ccall((:sfShader_createFromMemory, libcsfml_graphics), Ptr{sfShader}, (Cstring, Cstring, Cstring), vertexShader, geometryShader, fragmentShader)
end

function sfShader_createFromStream(vertexShaderStream, geometryShaderStream, fragmentShaderStream)
    ccall((:sfShader_createFromStream, libcsfml_graphics), Ptr{sfShader}, (Ptr{sfInputStream}, Ptr{sfInputStream}, Ptr{sfInputStream}), vertexShaderStream, geometryShaderStream, fragmentShaderStream)
end

function sfShader_destroy(shader)
    ccall((:sfShader_destroy, libcsfml_graphics), Cvoid, (Ptr{sfShader},), shader)
end

function sfShader_setFloatUniform(shader, name, x)
    ccall((:sfShader_setFloatUniform, libcsfml_graphics), Cvoid, (Ptr{sfShader}, Cstring, Cfloat), shader, name, x)
end

function sfShader_setVec2Uniform(shader, name, vector)
    ccall((:sfShader_setVec2Uniform, libcsfml_graphics), Cvoid, (Ptr{sfShader}, Cstring, sfGlslVec2), shader, name, vector)
end

function sfShader_setVec3Uniform(shader, name, vector)
    ccall((:sfShader_setVec3Uniform, libcsfml_graphics), Cvoid, (Ptr{sfShader}, Cstring, sfGlslVec3), shader, name, vector)
end

function sfShader_setVec4Uniform(shader, name, vector)
    ccall((:sfShader_setVec4Uniform, libcsfml_graphics), Cvoid, (Ptr{sfShader}, Cstring, sfGlslVec4), shader, name, vector)
end

function sfShader_setColorUniform(shader, name, color)
    ccall((:sfShader_setColorUniform, libcsfml_graphics), Cvoid, (Ptr{sfShader}, Cstring, sfColor), shader, name, color)
end

function sfShader_setIntUniform(shader, name, x)
    ccall((:sfShader_setIntUniform, libcsfml_graphics), Cvoid, (Ptr{sfShader}, Cstring, Cint), shader, name, x)
end

function sfShader_setIvec2Uniform(shader, name, vector)
    ccall((:sfShader_setIvec2Uniform, libcsfml_graphics), Cvoid, (Ptr{sfShader}, Cstring, sfGlslIvec2), shader, name, vector)
end

function sfShader_setIvec3Uniform(shader, name, vector)
    ccall((:sfShader_setIvec3Uniform, libcsfml_graphics), Cvoid, (Ptr{sfShader}, Cstring, sfGlslIvec3), shader, name, vector)
end

function sfShader_setIvec4Uniform(shader, name, vector)
    ccall((:sfShader_setIvec4Uniform, libcsfml_graphics), Cvoid, (Ptr{sfShader}, Cstring, sfGlslIvec4), shader, name, vector)
end

function sfShader_setIntColorUniform(shader, name, color)
    ccall((:sfShader_setIntColorUniform, libcsfml_graphics), Cvoid, (Ptr{sfShader}, Cstring, sfColor), shader, name, color)
end

function sfShader_setBoolUniform(shader, name, x)
    ccall((:sfShader_setBoolUniform, libcsfml_graphics), Cvoid, (Ptr{sfShader}, Cstring, sfBool), shader, name, x)
end

function sfShader_setBvec2Uniform(shader, name, vector)
    ccall((:sfShader_setBvec2Uniform, libcsfml_graphics), Cvoid, (Ptr{sfShader}, Cstring, sfGlslBvec2), shader, name, vector)
end

function sfShader_setBvec3Uniform(shader, name, vector)
    ccall((:sfShader_setBvec3Uniform, libcsfml_graphics), Cvoid, (Ptr{sfShader}, Cstring, sfGlslBvec3), shader, name, vector)
end

function sfShader_setBvec4Uniform(shader, name, vector)
    ccall((:sfShader_setBvec4Uniform, libcsfml_graphics), Cvoid, (Ptr{sfShader}, Cstring, sfGlslBvec4), shader, name, vector)
end

function sfShader_setMat3Uniform(shader, name, matrix)
    ccall((:sfShader_setMat3Uniform, libcsfml_graphics), Cvoid, (Ptr{sfShader}, Cstring, Ptr{sfGlslMat3}), shader, name, matrix)
end

function sfShader_setMat4Uniform(shader, name, matrix)
    ccall((:sfShader_setMat4Uniform, libcsfml_graphics), Cvoid, (Ptr{sfShader}, Cstring, Ptr{sfGlslMat4}), shader, name, matrix)
end

function sfShader_setTextureUniform(shader, name, texture)
    ccall((:sfShader_setTextureUniform, libcsfml_graphics), Cvoid, (Ptr{sfShader}, Cstring, Ptr{sfTexture}), shader, name, texture)
end

function sfShader_setCurrentTextureUniform(shader, name)
    ccall((:sfShader_setCurrentTextureUniform, libcsfml_graphics), Cvoid, (Ptr{sfShader}, Cstring), shader, name)
end

function sfShader_setFloatUniformArray(shader, name, scalarArray, length)
    ccall((:sfShader_setFloatUniformArray, libcsfml_graphics), Cvoid, (Ptr{sfShader}, Cstring, Ptr{Cfloat}, Csize_t), shader, name, scalarArray, length)
end

function sfShader_setVec2UniformArray(shader, name, vectorArray, length)
    ccall((:sfShader_setVec2UniformArray, libcsfml_graphics), Cvoid, (Ptr{sfShader}, Cstring, Ptr{sfGlslVec2}, Csize_t), shader, name, vectorArray, length)
end

function sfShader_setVec3UniformArray(shader, name, vectorArray, length)
    ccall((:sfShader_setVec3UniformArray, libcsfml_graphics), Cvoid, (Ptr{sfShader}, Cstring, Ptr{sfGlslVec3}, Csize_t), shader, name, vectorArray, length)
end

function sfShader_setVec4UniformArray(shader, name, vectorArray, length)
    ccall((:sfShader_setVec4UniformArray, libcsfml_graphics), Cvoid, (Ptr{sfShader}, Cstring, Ptr{sfGlslVec4}, Csize_t), shader, name, vectorArray, length)
end

function sfShader_setMat3UniformArray(shader, name, matrixArray, length)
    ccall((:sfShader_setMat3UniformArray, libcsfml_graphics), Cvoid, (Ptr{sfShader}, Cstring, Ptr{sfGlslMat3}, Csize_t), shader, name, matrixArray, length)
end

function sfShader_setMat4UniformArray(shader, name, matrixArray, length)
    ccall((:sfShader_setMat4UniformArray, libcsfml_graphics), Cvoid, (Ptr{sfShader}, Cstring, Ptr{sfGlslMat4}, Csize_t), shader, name, matrixArray, length)
end

function sfShader_setFloatParameter(shader, name, x)
    ccall((:sfShader_setFloatParameter, libcsfml_graphics), Cvoid, (Ptr{sfShader}, Cstring, Cfloat), shader, name, x)
end

function sfShader_setFloat2Parameter(shader, name, x, y)
    ccall((:sfShader_setFloat2Parameter, libcsfml_graphics), Cvoid, (Ptr{sfShader}, Cstring, Cfloat, Cfloat), shader, name, x, y)
end

function sfShader_setFloat3Parameter(shader, name, x, y, z)
    ccall((:sfShader_setFloat3Parameter, libcsfml_graphics), Cvoid, (Ptr{sfShader}, Cstring, Cfloat, Cfloat, Cfloat), shader, name, x, y, z)
end

function sfShader_setFloat4Parameter(shader, name, x, y, z, w)
    ccall((:sfShader_setFloat4Parameter, libcsfml_graphics), Cvoid, (Ptr{sfShader}, Cstring, Cfloat, Cfloat, Cfloat, Cfloat), shader, name, x, y, z, w)
end

function sfShader_setVector2Parameter(shader, name, vector)
    ccall((:sfShader_setVector2Parameter, libcsfml_graphics), Cvoid, (Ptr{sfShader}, Cstring, sfVector2f), shader, name, vector)
end

function sfShader_setVector3Parameter(shader, name, vector)
    ccall((:sfShader_setVector3Parameter, libcsfml_graphics), Cvoid, (Ptr{sfShader}, Cstring, sfVector3f), shader, name, vector)
end

function sfShader_setColorParameter(shader, name, color)
    ccall((:sfShader_setColorParameter, libcsfml_graphics), Cvoid, (Ptr{sfShader}, Cstring, sfColor), shader, name, color)
end

function sfShader_setTransformParameter(shader, name, transform)
    ccall((:sfShader_setTransformParameter, libcsfml_graphics), Cvoid, (Ptr{sfShader}, Cstring, sfTransform), shader, name, transform)
end

function sfShader_setTextureParameter(shader, name, texture)
    ccall((:sfShader_setTextureParameter, libcsfml_graphics), Cvoid, (Ptr{sfShader}, Cstring, Ptr{sfTexture}), shader, name, texture)
end

function sfShader_setCurrentTextureParameter(shader, name)
    ccall((:sfShader_setCurrentTextureParameter, libcsfml_graphics), Cvoid, (Ptr{sfShader}, Cstring), shader, name)
end

function sfShader_getNativeHandle(shader)
    ccall((:sfShader_getNativeHandle, libcsfml_graphics), UInt32, (Ptr{sfShader},), shader)
end

function sfShader_bind(shader)
    ccall((:sfShader_bind, libcsfml_graphics), Cvoid, (Ptr{sfShader},), shader)
end

function sfShader_isAvailable()
    ccall((:sfShader_isAvailable, libcsfml_graphics), sfBool, ())
end

function sfShader_isGeometryAvailable()
    ccall((:sfShader_isGeometryAvailable, libcsfml_graphics), sfBool, ())
end
# Julia wrapper for header: Shape.h
# Automatically generated using Clang.jl


function sfShape_create(getPointCount, getPoint, userData)
    ccall((:sfShape_create, libcsfml_graphics), Ptr{sfShape}, (sfShapeGetPointCountCallback, sfShapeGetPointCallback, Ptr{Cvoid}), getPointCount, getPoint, userData)
end

function sfShape_destroy(shape)
    ccall((:sfShape_destroy, libcsfml_graphics), Cvoid, (Ptr{sfShape},), shape)
end

function sfShape_setPosition(shape, position)
    ccall((:sfShape_setPosition, libcsfml_graphics), Cvoid, (Ptr{sfShape}, sfVector2f), shape, position)
end

function sfShape_setRotation(shape, angle)
    ccall((:sfShape_setRotation, libcsfml_graphics), Cvoid, (Ptr{sfShape}, Cfloat), shape, angle)
end

function sfShape_setScale(shape, scale)
    ccall((:sfShape_setScale, libcsfml_graphics), Cvoid, (Ptr{sfShape}, sfVector2f), shape, scale)
end

function sfShape_setOrigin(shape, origin)
    ccall((:sfShape_setOrigin, libcsfml_graphics), Cvoid, (Ptr{sfShape}, sfVector2f), shape, origin)
end

function sfShape_getPosition(shape)
    ccall((:sfShape_getPosition, libcsfml_graphics), sfVector2f, (Ptr{sfShape},), shape)
end

function sfShape_getRotation(shape)
    ccall((:sfShape_getRotation, libcsfml_graphics), Cfloat, (Ptr{sfShape},), shape)
end

function sfShape_getScale(shape)
    ccall((:sfShape_getScale, libcsfml_graphics), sfVector2f, (Ptr{sfShape},), shape)
end

function sfShape_getOrigin(shape)
    ccall((:sfShape_getOrigin, libcsfml_graphics), sfVector2f, (Ptr{sfShape},), shape)
end

function sfShape_move(shape, offset)
    ccall((:sfShape_move, libcsfml_graphics), Cvoid, (Ptr{sfShape}, sfVector2f), shape, offset)
end

function sfShape_rotate(shape, angle)
    ccall((:sfShape_rotate, libcsfml_graphics), Cvoid, (Ptr{sfShape}, Cfloat), shape, angle)
end

function sfShape_scale(shape, factors)
    ccall((:sfShape_scale, libcsfml_graphics), Cvoid, (Ptr{sfShape}, sfVector2f), shape, factors)
end

function sfShape_getTransform(shape)
    ccall((:sfShape_getTransform, libcsfml_graphics), sfTransform, (Ptr{sfShape},), shape)
end

function sfShape_getInverseTransform(shape)
    ccall((:sfShape_getInverseTransform, libcsfml_graphics), sfTransform, (Ptr{sfShape},), shape)
end

function sfShape_setTexture(shape, texture, resetRect)
    ccall((:sfShape_setTexture, libcsfml_graphics), Cvoid, (Ptr{sfShape}, Ptr{sfTexture}, sfBool), shape, texture, resetRect)
end

function sfShape_setTextureRect(shape, rect)
    ccall((:sfShape_setTextureRect, libcsfml_graphics), Cvoid, (Ptr{sfShape}, sfIntRect), shape, rect)
end

function sfShape_setFillColor(shape, color)
    ccall((:sfShape_setFillColor, libcsfml_graphics), Cvoid, (Ptr{sfShape}, sfColor), shape, color)
end

function sfShape_setOutlineColor(shape, color)
    ccall((:sfShape_setOutlineColor, libcsfml_graphics), Cvoid, (Ptr{sfShape}, sfColor), shape, color)
end

function sfShape_setOutlineThickness(shape, thickness)
    ccall((:sfShape_setOutlineThickness, libcsfml_graphics), Cvoid, (Ptr{sfShape}, Cfloat), shape, thickness)
end

function sfShape_getTexture(shape)
    ccall((:sfShape_getTexture, libcsfml_graphics), Ptr{sfTexture}, (Ptr{sfShape},), shape)
end

function sfShape_getTextureRect(shape)
    ccall((:sfShape_getTextureRect, libcsfml_graphics), sfIntRect, (Ptr{sfShape},), shape)
end

function sfShape_getFillColor(shape)
    ccall((:sfShape_getFillColor, libcsfml_graphics), sfColor, (Ptr{sfShape},), shape)
end

function sfShape_getOutlineColor(shape)
    ccall((:sfShape_getOutlineColor, libcsfml_graphics), sfColor, (Ptr{sfShape},), shape)
end

function sfShape_getOutlineThickness(shape)
    ccall((:sfShape_getOutlineThickness, libcsfml_graphics), Cfloat, (Ptr{sfShape},), shape)
end

function sfShape_getPointCount(shape)
    ccall((:sfShape_getPointCount, libcsfml_graphics), Csize_t, (Ptr{sfShape},), shape)
end

function sfShape_getPoint(shape, index)
    ccall((:sfShape_getPoint, libcsfml_graphics), sfVector2f, (Ptr{sfShape}, Csize_t), shape, index)
end

function sfShape_getLocalBounds(shape)
    ccall((:sfShape_getLocalBounds, libcsfml_graphics), sfFloatRect, (Ptr{sfShape},), shape)
end

function sfShape_getGlobalBounds(shape)
    ccall((:sfShape_getGlobalBounds, libcsfml_graphics), sfFloatRect, (Ptr{sfShape},), shape)
end

function sfShape_update(shape)
    ccall((:sfShape_update, libcsfml_graphics), Cvoid, (Ptr{sfShape},), shape)
end
# Julia wrapper for header: Sprite.h
# Automatically generated using Clang.jl


function sfSprite_create()
    ccall((:sfSprite_create, libcsfml_graphics), Ptr{sfSprite}, ())
end

function sfSprite_copy(sprite)
    ccall((:sfSprite_copy, libcsfml_graphics), Ptr{sfSprite}, (Ptr{sfSprite},), sprite)
end

function sfSprite_destroy(sprite)
    ccall((:sfSprite_destroy, libcsfml_graphics), Cvoid, (Ptr{sfSprite},), sprite)
end

function sfSprite_setPosition(sprite, position)
    ccall((:sfSprite_setPosition, libcsfml_graphics), Cvoid, (Ptr{sfSprite}, sfVector2f), sprite, position)
end

function sfSprite_setRotation(sprite, angle)
    ccall((:sfSprite_setRotation, libcsfml_graphics), Cvoid, (Ptr{sfSprite}, Cfloat), sprite, angle)
end

function sfSprite_setScale(sprite, scale)
    ccall((:sfSprite_setScale, libcsfml_graphics), Cvoid, (Ptr{sfSprite}, sfVector2f), sprite, scale)
end

function sfSprite_setOrigin(sprite, origin)
    ccall((:sfSprite_setOrigin, libcsfml_graphics), Cvoid, (Ptr{sfSprite}, sfVector2f), sprite, origin)
end

function sfSprite_getPosition(sprite)
    ccall((:sfSprite_getPosition, libcsfml_graphics), sfVector2f, (Ptr{sfSprite},), sprite)
end

function sfSprite_getRotation(sprite)
    ccall((:sfSprite_getRotation, libcsfml_graphics), Cfloat, (Ptr{sfSprite},), sprite)
end

function sfSprite_getScale(sprite)
    ccall((:sfSprite_getScale, libcsfml_graphics), sfVector2f, (Ptr{sfSprite},), sprite)
end

function sfSprite_getOrigin(sprite)
    ccall((:sfSprite_getOrigin, libcsfml_graphics), sfVector2f, (Ptr{sfSprite},), sprite)
end

function sfSprite_move(sprite, offset)
    ccall((:sfSprite_move, libcsfml_graphics), Cvoid, (Ptr{sfSprite}, sfVector2f), sprite, offset)
end

function sfSprite_rotate(sprite, angle)
    ccall((:sfSprite_rotate, libcsfml_graphics), Cvoid, (Ptr{sfSprite}, Cfloat), sprite, angle)
end

function sfSprite_scale(sprite, factors)
    ccall((:sfSprite_scale, libcsfml_graphics), Cvoid, (Ptr{sfSprite}, sfVector2f), sprite, factors)
end

function sfSprite_getTransform(sprite)
    ccall((:sfSprite_getTransform, libcsfml_graphics), sfTransform, (Ptr{sfSprite},), sprite)
end

function sfSprite_getInverseTransform(sprite)
    ccall((:sfSprite_getInverseTransform, libcsfml_graphics), sfTransform, (Ptr{sfSprite},), sprite)
end

function sfSprite_setTexture(sprite, texture, resetRect)
    ccall((:sfSprite_setTexture, libcsfml_graphics), Cvoid, (Ptr{sfSprite}, Ptr{sfTexture}, sfBool), sprite, texture, resetRect)
end

function sfSprite_setTextureRect(sprite, rectangle)
    ccall((:sfSprite_setTextureRect, libcsfml_graphics), Cvoid, (Ptr{sfSprite}, sfIntRect), sprite, rectangle)
end

function sfSprite_setColor(sprite, color)
    ccall((:sfSprite_setColor, libcsfml_graphics), Cvoid, (Ptr{sfSprite}, sfColor), sprite, color)
end

function sfSprite_getTexture(sprite)
    ccall((:sfSprite_getTexture, libcsfml_graphics), Ptr{sfTexture}, (Ptr{sfSprite},), sprite)
end

function sfSprite_getTextureRect(sprite)
    ccall((:sfSprite_getTextureRect, libcsfml_graphics), sfIntRect, (Ptr{sfSprite},), sprite)
end

function sfSprite_getColor(sprite)
    ccall((:sfSprite_getColor, libcsfml_graphics), sfColor, (Ptr{sfSprite},), sprite)
end

function sfSprite_getLocalBounds(sprite)
    ccall((:sfSprite_getLocalBounds, libcsfml_graphics), sfFloatRect, (Ptr{sfSprite},), sprite)
end

function sfSprite_getGlobalBounds(sprite)
    ccall((:sfSprite_getGlobalBounds, libcsfml_graphics), sfFloatRect, (Ptr{sfSprite},), sprite)
end
# Julia wrapper for header: Text.h
# Automatically generated using Clang.jl


function sfText_create()
    ccall((:sfText_create, libcsfml_graphics), Ptr{sfText}, ())
end

function sfText_copy(text)
    ccall((:sfText_copy, libcsfml_graphics), Ptr{sfText}, (Ptr{sfText},), text)
end

function sfText_destroy(text)
    ccall((:sfText_destroy, libcsfml_graphics), Cvoid, (Ptr{sfText},), text)
end

function sfText_setPosition(text, position)
    ccall((:sfText_setPosition, libcsfml_graphics), Cvoid, (Ptr{sfText}, sfVector2f), text, position)
end

function sfText_setRotation(text, angle)
    ccall((:sfText_setRotation, libcsfml_graphics), Cvoid, (Ptr{sfText}, Cfloat), text, angle)
end

function sfText_setScale(text, scale)
    ccall((:sfText_setScale, libcsfml_graphics), Cvoid, (Ptr{sfText}, sfVector2f), text, scale)
end

function sfText_setOrigin(text, origin)
    ccall((:sfText_setOrigin, libcsfml_graphics), Cvoid, (Ptr{sfText}, sfVector2f), text, origin)
end

function sfText_getPosition(text)
    ccall((:sfText_getPosition, libcsfml_graphics), sfVector2f, (Ptr{sfText},), text)
end

function sfText_getRotation(text)
    ccall((:sfText_getRotation, libcsfml_graphics), Cfloat, (Ptr{sfText},), text)
end

function sfText_getScale(text)
    ccall((:sfText_getScale, libcsfml_graphics), sfVector2f, (Ptr{sfText},), text)
end

function sfText_getOrigin(text)
    ccall((:sfText_getOrigin, libcsfml_graphics), sfVector2f, (Ptr{sfText},), text)
end

function sfText_move(text, offset)
    ccall((:sfText_move, libcsfml_graphics), Cvoid, (Ptr{sfText}, sfVector2f), text, offset)
end

function sfText_rotate(text, angle)
    ccall((:sfText_rotate, libcsfml_graphics), Cvoid, (Ptr{sfText}, Cfloat), text, angle)
end

function sfText_scale(text, factors)
    ccall((:sfText_scale, libcsfml_graphics), Cvoid, (Ptr{sfText}, sfVector2f), text, factors)
end

function sfText_getTransform(text)
    ccall((:sfText_getTransform, libcsfml_graphics), sfTransform, (Ptr{sfText},), text)
end

function sfText_getInverseTransform(text)
    ccall((:sfText_getInverseTransform, libcsfml_graphics), sfTransform, (Ptr{sfText},), text)
end

function sfText_setString(text, string)
    ccall((:sfText_setString, libcsfml_graphics), Cvoid, (Ptr{sfText}, Cstring), text, string)
end

function sfText_setUnicodeString(text, string)
    ccall((:sfText_setUnicodeString, libcsfml_graphics), Cvoid, (Ptr{sfText}, Ptr{sfUint32}), text, string)
end

function sfText_setFont(text, font)
    ccall((:sfText_setFont, libcsfml_graphics), Cvoid, (Ptr{sfText}, Ptr{sfFont}), text, font)
end

function sfText_setCharacterSize(text, size)
    ccall((:sfText_setCharacterSize, libcsfml_graphics), Cvoid, (Ptr{sfText}, UInt32), text, size)
end

function sfText_setLineSpacing(text, spacingFactor)
    ccall((:sfText_setLineSpacing, libcsfml_graphics), Cvoid, (Ptr{sfText}, Cfloat), text, spacingFactor)
end

function sfText_setLetterSpacing(text, spacingFactor)
    ccall((:sfText_setLetterSpacing, libcsfml_graphics), Cvoid, (Ptr{sfText}, Cfloat), text, spacingFactor)
end

function sfText_setStyle(text, style)
    ccall((:sfText_setStyle, libcsfml_graphics), Cvoid, (Ptr{sfText}, sfUint32), text, style)
end

function sfText_setColor(text, color)
    ccall((:sfText_setColor, libcsfml_graphics), Cvoid, (Ptr{sfText}, sfColor), text, color)
end

function sfText_setFillColor(text, color)
    ccall((:sfText_setFillColor, libcsfml_graphics), Cvoid, (Ptr{sfText}, sfColor), text, color)
end

function sfText_setOutlineColor(text, color)
    ccall((:sfText_setOutlineColor, libcsfml_graphics), Cvoid, (Ptr{sfText}, sfColor), text, color)
end

function sfText_setOutlineThickness(text, thickness)
    ccall((:sfText_setOutlineThickness, libcsfml_graphics), Cvoid, (Ptr{sfText}, Cfloat), text, thickness)
end

function sfText_getString(text)
    ccall((:sfText_getString, libcsfml_graphics), Cstring, (Ptr{sfText},), text)
end

function sfText_getUnicodeString(text)
    ccall((:sfText_getUnicodeString, libcsfml_graphics), Ptr{sfUint32}, (Ptr{sfText},), text)
end

function sfText_getFont(text)
    ccall((:sfText_getFont, libcsfml_graphics), Ptr{sfFont}, (Ptr{sfText},), text)
end

function sfText_getCharacterSize(text)
    ccall((:sfText_getCharacterSize, libcsfml_graphics), UInt32, (Ptr{sfText},), text)
end

function sfText_getLetterSpacing(text)
    ccall((:sfText_getLetterSpacing, libcsfml_graphics), Cfloat, (Ptr{sfText},), text)
end

function sfText_getLineSpacing(text)
    ccall((:sfText_getLineSpacing, libcsfml_graphics), Cfloat, (Ptr{sfText},), text)
end

function sfText_getStyle(text)
    ccall((:sfText_getStyle, libcsfml_graphics), sfUint32, (Ptr{sfText},), text)
end

function sfText_getColor(text)
    ccall((:sfText_getColor, libcsfml_graphics), sfColor, (Ptr{sfText},), text)
end

function sfText_getFillColor(text)
    ccall((:sfText_getFillColor, libcsfml_graphics), sfColor, (Ptr{sfText},), text)
end

function sfText_getOutlineColor(text)
    ccall((:sfText_getOutlineColor, libcsfml_graphics), sfColor, (Ptr{sfText},), text)
end

function sfText_getOutlineThickness(text)
    ccall((:sfText_getOutlineThickness, libcsfml_graphics), Cfloat, (Ptr{sfText},), text)
end

function sfText_findCharacterPos(text, index)
    ccall((:sfText_findCharacterPos, libcsfml_graphics), sfVector2f, (Ptr{sfText}, Csize_t), text, index)
end

function sfText_getLocalBounds(text)
    ccall((:sfText_getLocalBounds, libcsfml_graphics), sfFloatRect, (Ptr{sfText},), text)
end

function sfText_getGlobalBounds(text)
    ccall((:sfText_getGlobalBounds, libcsfml_graphics), sfFloatRect, (Ptr{sfText},), text)
end
# Julia wrapper for header: Texture.h
# Automatically generated using Clang.jl


function sfTexture_create(width, height)
    ccall((:sfTexture_create, libcsfml_graphics), Ptr{sfTexture}, (UInt32, UInt32), width, height)
end

function sfTexture_createFromFile(filename, area)
    ccall((:sfTexture_createFromFile, libcsfml_graphics), Ptr{sfTexture}, (Cstring, Ptr{sfIntRect}), filename, area)
end

function sfTexture_createFromMemory(data, sizeInBytes, area)
    ccall((:sfTexture_createFromMemory, libcsfml_graphics), Ptr{sfTexture}, (Ptr{Cvoid}, Csize_t, Ptr{sfIntRect}), data, sizeInBytes, area)
end

function sfTexture_createFromStream(stream, area)
    ccall((:sfTexture_createFromStream, libcsfml_graphics), Ptr{sfTexture}, (Ptr{sfInputStream}, Ptr{sfIntRect}), stream, area)
end

function sfTexture_createFromImage(image, area)
    ccall((:sfTexture_createFromImage, libcsfml_graphics), Ptr{sfTexture}, (Ptr{sfImage}, Ptr{sfIntRect}), image, area)
end

function sfTexture_copy(texture)
    ccall((:sfTexture_copy, libcsfml_graphics), Ptr{sfTexture}, (Ptr{sfTexture},), texture)
end

function sfTexture_destroy(texture)
    ccall((:sfTexture_destroy, libcsfml_graphics), Cvoid, (Ptr{sfTexture},), texture)
end

function sfTexture_getSize(texture)
    ccall((:sfTexture_getSize, libcsfml_graphics), sfVector2u, (Ptr{sfTexture},), texture)
end

function sfTexture_copyToImage(texture)
    ccall((:sfTexture_copyToImage, libcsfml_graphics), Ptr{sfImage}, (Ptr{sfTexture},), texture)
end

function sfTexture_updateFromPixels(texture, pixels, width, height, x, y)
    ccall((:sfTexture_updateFromPixels, libcsfml_graphics), Cvoid, (Ptr{sfTexture}, Ptr{sfUint8}, UInt32, UInt32, UInt32, UInt32), texture, pixels, width, height, x, y)
end

function sfTexture_updateFromTexture(destination, source, x, y)
    ccall((:sfTexture_updateFromTexture, libcsfml_graphics), Cvoid, (Ptr{sfTexture}, Ptr{sfTexture}, UInt32, UInt32), destination, source, x, y)
end

function sfTexture_updateFromImage(texture, image, x, y)
    ccall((:sfTexture_updateFromImage, libcsfml_graphics), Cvoid, (Ptr{sfTexture}, Ptr{sfImage}, UInt32, UInt32), texture, image, x, y)
end

function sfTexture_updateFromWindow(texture, window, x, y)
    ccall((:sfTexture_updateFromWindow, libcsfml_graphics), Cvoid, (Ptr{sfTexture}, Ptr{sfWindow}, UInt32, UInt32), texture, window, x, y)
end

function sfTexture_updateFromRenderWindow(texture, renderWindow, x, y)
    ccall((:sfTexture_updateFromRenderWindow, libcsfml_graphics), Cvoid, (Ptr{sfTexture}, Ptr{sfRenderWindow}, UInt32, UInt32), texture, renderWindow, x, y)
end

function sfTexture_setSmooth(texture, smooth)
    ccall((:sfTexture_setSmooth, libcsfml_graphics), Cvoid, (Ptr{sfTexture}, sfBool), texture, smooth)
end

function sfTexture_isSmooth(texture)
    ccall((:sfTexture_isSmooth, libcsfml_graphics), sfBool, (Ptr{sfTexture},), texture)
end

function sfTexture_setSrgb(texture, sRgb)
    ccall((:sfTexture_setSrgb, libcsfml_graphics), Cvoid, (Ptr{sfTexture}, sfBool), texture, sRgb)
end

function sfTexture_isSrgb(texture)
    ccall((:sfTexture_isSrgb, libcsfml_graphics), sfBool, (Ptr{sfTexture},), texture)
end

function sfTexture_setRepeated(texture, repeated)
    ccall((:sfTexture_setRepeated, libcsfml_graphics), Cvoid, (Ptr{sfTexture}, sfBool), texture, repeated)
end

function sfTexture_isRepeated(texture)
    ccall((:sfTexture_isRepeated, libcsfml_graphics), sfBool, (Ptr{sfTexture},), texture)
end

function sfTexture_generateMipmap(texture)
    ccall((:sfTexture_generateMipmap, libcsfml_graphics), sfBool, (Ptr{sfTexture},), texture)
end

function sfTexture_swap(left, right)
    ccall((:sfTexture_swap, libcsfml_graphics), Cvoid, (Ptr{sfTexture}, Ptr{sfTexture}), left, right)
end

function sfTexture_getNativeHandle(texture)
    ccall((:sfTexture_getNativeHandle, libcsfml_graphics), UInt32, (Ptr{sfTexture},), texture)
end

function sfTexture_bind(texture)
    ccall((:sfTexture_bind, libcsfml_graphics), Cvoid, (Ptr{sfTexture},), texture)
end

function sfTexture_getMaximumSize()
    ccall((:sfTexture_getMaximumSize, libcsfml_graphics), UInt32, ())
end
# Julia wrapper for header: Transform.h
# Automatically generated using Clang.jl


function sfTransform_fromMatrix(a00, a01, a02, a10, a11, a12, a20, a21, a22)
    ccall((:sfTransform_fromMatrix, libcsfml_graphics), sfTransform, (Cfloat, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat), a00, a01, a02, a10, a11, a12, a20, a21, a22)
end

function sfTransform_getMatrix(transform, matrix)
    ccall((:sfTransform_getMatrix, libcsfml_graphics), Cvoid, (Ptr{sfTransform}, Ptr{Cfloat}), transform, matrix)
end

function sfTransform_getInverse(transform)
    ccall((:sfTransform_getInverse, libcsfml_graphics), sfTransform, (Ptr{sfTransform},), transform)
end

function sfTransform_transformPoint(transform, point)
    ccall((:sfTransform_transformPoint, libcsfml_graphics), sfVector2f, (Ptr{sfTransform}, sfVector2f), transform, point)
end

function sfTransform_transformRect(transform, rectangle)
    ccall((:sfTransform_transformRect, libcsfml_graphics), sfFloatRect, (Ptr{sfTransform}, sfFloatRect), transform, rectangle)
end

function sfTransform_combine(transform, other)
    ccall((:sfTransform_combine, libcsfml_graphics), Cvoid, (Ptr{sfTransform}, Ptr{sfTransform}), transform, other)
end

function sfTransform_translate(transform, x, y)
    ccall((:sfTransform_translate, libcsfml_graphics), Cvoid, (Ptr{sfTransform}, Cfloat, Cfloat), transform, x, y)
end

function sfTransform_rotate(transform, angle)
    ccall((:sfTransform_rotate, libcsfml_graphics), Cvoid, (Ptr{sfTransform}, Cfloat), transform, angle)
end

function sfTransform_rotateWithCenter(transform, angle, centerX, centerY)
    ccall((:sfTransform_rotateWithCenter, libcsfml_graphics), Cvoid, (Ptr{sfTransform}, Cfloat, Cfloat, Cfloat), transform, angle, centerX, centerY)
end

function sfTransform_scale(transform, scaleX, scaleY)
    ccall((:sfTransform_scale, libcsfml_graphics), Cvoid, (Ptr{sfTransform}, Cfloat, Cfloat), transform, scaleX, scaleY)
end

function sfTransform_scaleWithCenter(transform, scaleX, scaleY, centerX, centerY)
    ccall((:sfTransform_scaleWithCenter, libcsfml_graphics), Cvoid, (Ptr{sfTransform}, Cfloat, Cfloat, Cfloat, Cfloat), transform, scaleX, scaleY, centerX, centerY)
end

function sfTransform_equal(left, right)
    ccall((:sfTransform_equal, libcsfml_graphics), sfBool, (Ptr{sfTransform}, Ptr{sfTransform}), left, right)
end
# Julia wrapper for header: Transformable.h
# Automatically generated using Clang.jl


function sfTransformable_create()
    ccall((:sfTransformable_create, libcsfml_graphics), Ptr{sfTransformable}, ())
end

function sfTransformable_copy(transformable)
    ccall((:sfTransformable_copy, libcsfml_graphics), Ptr{sfTransformable}, (Ptr{sfTransformable},), transformable)
end

function sfTransformable_destroy(transformable)
    ccall((:sfTransformable_destroy, libcsfml_graphics), Cvoid, (Ptr{sfTransformable},), transformable)
end

function sfTransformable_setPosition(transformable, position)
    ccall((:sfTransformable_setPosition, libcsfml_graphics), Cvoid, (Ptr{sfTransformable}, sfVector2f), transformable, position)
end

function sfTransformable_setRotation(transformable, angle)
    ccall((:sfTransformable_setRotation, libcsfml_graphics), Cvoid, (Ptr{sfTransformable}, Cfloat), transformable, angle)
end

function sfTransformable_setScale(transformable, scale)
    ccall((:sfTransformable_setScale, libcsfml_graphics), Cvoid, (Ptr{sfTransformable}, sfVector2f), transformable, scale)
end

function sfTransformable_setOrigin(transformable, origin)
    ccall((:sfTransformable_setOrigin, libcsfml_graphics), Cvoid, (Ptr{sfTransformable}, sfVector2f), transformable, origin)
end

function sfTransformable_getPosition(transformable)
    ccall((:sfTransformable_getPosition, libcsfml_graphics), sfVector2f, (Ptr{sfTransformable},), transformable)
end

function sfTransformable_getRotation(transformable)
    ccall((:sfTransformable_getRotation, libcsfml_graphics), Cfloat, (Ptr{sfTransformable},), transformable)
end

function sfTransformable_getScale(transformable)
    ccall((:sfTransformable_getScale, libcsfml_graphics), sfVector2f, (Ptr{sfTransformable},), transformable)
end

function sfTransformable_getOrigin(transformable)
    ccall((:sfTransformable_getOrigin, libcsfml_graphics), sfVector2f, (Ptr{sfTransformable},), transformable)
end

function sfTransformable_move(transformable, offset)
    ccall((:sfTransformable_move, libcsfml_graphics), Cvoid, (Ptr{sfTransformable}, sfVector2f), transformable, offset)
end

function sfTransformable_rotate(transformable, angle)
    ccall((:sfTransformable_rotate, libcsfml_graphics), Cvoid, (Ptr{sfTransformable}, Cfloat), transformable, angle)
end

function sfTransformable_scale(transformable, factors)
    ccall((:sfTransformable_scale, libcsfml_graphics), Cvoid, (Ptr{sfTransformable}, sfVector2f), transformable, factors)
end

function sfTransformable_getTransform(transformable)
    ccall((:sfTransformable_getTransform, libcsfml_graphics), sfTransform, (Ptr{sfTransformable},), transformable)
end

function sfTransformable_getInverseTransform(transformable)
    ccall((:sfTransformable_getInverseTransform, libcsfml_graphics), sfTransform, (Ptr{sfTransformable},), transformable)
end
# Julia wrapper for header: Types.h
# Automatically generated using Clang.jl

# Julia wrapper for header: Vertex.h
# Automatically generated using Clang.jl

# Julia wrapper for header: VertexArray.h
# Automatically generated using Clang.jl


function sfVertexArray_create()
    ccall((:sfVertexArray_create, libcsfml_graphics), Ptr{sfVertexArray}, ())
end

function sfVertexArray_copy(vertexArray)
    ccall((:sfVertexArray_copy, libcsfml_graphics), Ptr{sfVertexArray}, (Ptr{sfVertexArray},), vertexArray)
end

function sfVertexArray_destroy(vertexArray)
    ccall((:sfVertexArray_destroy, libcsfml_graphics), Cvoid, (Ptr{sfVertexArray},), vertexArray)
end

function sfVertexArray_getVertexCount(vertexArray)
    ccall((:sfVertexArray_getVertexCount, libcsfml_graphics), Csize_t, (Ptr{sfVertexArray},), vertexArray)
end

function sfVertexArray_getVertex(vertexArray, index)
    ccall((:sfVertexArray_getVertex, libcsfml_graphics), Ptr{sfVertex}, (Ptr{sfVertexArray}, Csize_t), vertexArray, index)
end

function sfVertexArray_clear(vertexArray)
    ccall((:sfVertexArray_clear, libcsfml_graphics), Cvoid, (Ptr{sfVertexArray},), vertexArray)
end

function sfVertexArray_resize(vertexArray, vertexCount)
    ccall((:sfVertexArray_resize, libcsfml_graphics), Cvoid, (Ptr{sfVertexArray}, Csize_t), vertexArray, vertexCount)
end

function sfVertexArray_append(vertexArray, vertex)
    ccall((:sfVertexArray_append, libcsfml_graphics), Cvoid, (Ptr{sfVertexArray}, sfVertex), vertexArray, vertex)
end

function sfVertexArray_setPrimitiveType(vertexArray, type)
    ccall((:sfVertexArray_setPrimitiveType, libcsfml_graphics), Cvoid, (Ptr{sfVertexArray}, sfPrimitiveType), vertexArray, type)
end

function sfVertexArray_getPrimitiveType(vertexArray)
    ccall((:sfVertexArray_getPrimitiveType, libcsfml_graphics), sfPrimitiveType, (Ptr{sfVertexArray},), vertexArray)
end

function sfVertexArray_getBounds(vertexArray)
    ccall((:sfVertexArray_getBounds, libcsfml_graphics), sfFloatRect, (Ptr{sfVertexArray},), vertexArray)
end
# Julia wrapper for header: VertexBuffer.h
# Automatically generated using Clang.jl


function sfVertexBuffer_create(vertexCount, type, usage)
    ccall((:sfVertexBuffer_create, libcsfml_graphics), Ptr{sfVertexBuffer}, (UInt32, sfPrimitiveType, sfVertexBufferUsage), vertexCount, type, usage)
end

function sfVertexBuffer_copy(vertexBuffer)
    ccall((:sfVertexBuffer_copy, libcsfml_graphics), Ptr{sfVertexBuffer}, (Ptr{sfVertexBuffer},), vertexBuffer)
end

function sfVertexBuffer_destroy(vertexBuffer)
    ccall((:sfVertexBuffer_destroy, libcsfml_graphics), Cvoid, (Ptr{sfVertexBuffer},), vertexBuffer)
end

function sfVertexBuffer_getVertexCount(vertexBuffer)
    ccall((:sfVertexBuffer_getVertexCount, libcsfml_graphics), UInt32, (Ptr{sfVertexBuffer},), vertexBuffer)
end

function sfVertexBuffer_update(vertexBuffer, vertices, vertexCount, offset)
    ccall((:sfVertexBuffer_update, libcsfml_graphics), sfBool, (Ptr{sfVertexBuffer}, Ptr{sfVertex}, UInt32, UInt32), vertexBuffer, vertices, vertexCount, offset)
end

function sfVertexBuffer_updateFromVertexBuffer(vertexBuffer, other)
    ccall((:sfVertexBuffer_updateFromVertexBuffer, libcsfml_graphics), sfBool, (Ptr{sfVertexBuffer}, Ptr{sfVertexBuffer}), vertexBuffer, other)
end

function sfVertexBuffer_swap(left, right)
    ccall((:sfVertexBuffer_swap, libcsfml_graphics), Cvoid, (Ptr{sfVertexBuffer}, Ptr{sfVertexBuffer}), left, right)
end

function sfVertexBuffer_getNativeHandle(vertexBuffer)
    ccall((:sfVertexBuffer_getNativeHandle, libcsfml_graphics), UInt32, (Ptr{sfVertexBuffer},), vertexBuffer)
end

function sfVertexBuffer_setPrimitiveType(vertexBuffer, type)
    ccall((:sfVertexBuffer_setPrimitiveType, libcsfml_graphics), Cvoid, (Ptr{sfVertexBuffer}, sfPrimitiveType), vertexBuffer, type)
end

function sfVertexBuffer_getPrimitiveType(vertexBuffer)
    ccall((:sfVertexBuffer_getPrimitiveType, libcsfml_graphics), sfPrimitiveType, (Ptr{sfVertexBuffer},), vertexBuffer)
end

function sfVertexBuffer_setUsage(vertexBuffer, usage)
    ccall((:sfVertexBuffer_setUsage, libcsfml_graphics), Cvoid, (Ptr{sfVertexBuffer}, sfVertexBufferUsage), vertexBuffer, usage)
end

function sfVertexBuffer_getUsage(vertexBuffer)
    ccall((:sfVertexBuffer_getUsage, libcsfml_graphics), sfVertexBufferUsage, (Ptr{sfVertexBuffer},), vertexBuffer)
end

function sfVertexBuffer_bind(vertexBuffer)
    ccall((:sfVertexBuffer_bind, libcsfml_graphics), Cvoid, (Ptr{sfVertexBuffer},), vertexBuffer)
end

function sfVertexBuffer_isAvailable()
    ccall((:sfVertexBuffer_isAvailable, libcsfml_graphics), sfBool, ())
end
# Julia wrapper for header: View.h
# Automatically generated using Clang.jl


function sfView_create()
    ccall((:sfView_create, libcsfml_graphics), Ptr{sfView}, ())
end

function sfView_createFromRect(rectangle)
    ccall((:sfView_createFromRect, libcsfml_graphics), Ptr{sfView}, (sfFloatRect,), rectangle)
end

function sfView_copy(view)
    ccall((:sfView_copy, libcsfml_graphics), Ptr{sfView}, (Ptr{sfView},), view)
end

function sfView_destroy(view)
    ccall((:sfView_destroy, libcsfml_graphics), Cvoid, (Ptr{sfView},), view)
end

function sfView_setCenter(view, center)
    ccall((:sfView_setCenter, libcsfml_graphics), Cvoid, (Ptr{sfView}, sfVector2f), view, center)
end

function sfView_setSize(view, size)
    ccall((:sfView_setSize, libcsfml_graphics), Cvoid, (Ptr{sfView}, sfVector2f), view, size)
end

function sfView_setRotation(view, angle)
    ccall((:sfView_setRotation, libcsfml_graphics), Cvoid, (Ptr{sfView}, Cfloat), view, angle)
end

function sfView_setViewport(view, viewport)
    ccall((:sfView_setViewport, libcsfml_graphics), Cvoid, (Ptr{sfView}, sfFloatRect), view, viewport)
end

function sfView_reset(view, rectangle)
    ccall((:sfView_reset, libcsfml_graphics), Cvoid, (Ptr{sfView}, sfFloatRect), view, rectangle)
end

function sfView_getCenter(view)
    ccall((:sfView_getCenter, libcsfml_graphics), sfVector2f, (Ptr{sfView},), view)
end

function sfView_getSize(view)
    ccall((:sfView_getSize, libcsfml_graphics), sfVector2f, (Ptr{sfView},), view)
end

function sfView_getRotation(view)
    ccall((:sfView_getRotation, libcsfml_graphics), Cfloat, (Ptr{sfView},), view)
end

function sfView_getViewport(view)
    ccall((:sfView_getViewport, libcsfml_graphics), sfFloatRect, (Ptr{sfView},), view)
end

function sfView_move(view, offset)
    ccall((:sfView_move, libcsfml_graphics), Cvoid, (Ptr{sfView}, sfVector2f), view, offset)
end

function sfView_rotate(view, angle)
    ccall((:sfView_rotate, libcsfml_graphics), Cvoid, (Ptr{sfView}, Cfloat), view, angle)
end

function sfView_zoom(view, factor)
    ccall((:sfView_zoom, libcsfml_graphics), Cvoid, (Ptr{sfView}, Cfloat), view, factor)
end
