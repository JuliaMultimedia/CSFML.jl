# Automatically generated using Clang.jl


@cenum sfBlendFactor::UInt32 begin
    sfBlendFactorZero = 0
    sfBlendFactorOne = 1
    sfBlendFactorSrcColor = 2
    sfBlendFactorOneMinusSrcColor = 3
    sfBlendFactorDstColor = 4
    sfBlendFactorOneMinusDstColor = 5
    sfBlendFactorSrcAlpha = 6
    sfBlendFactorOneMinusSrcAlpha = 7
    sfBlendFactorDstAlpha = 8
    sfBlendFactorOneMinusDstAlpha = 9
end

@cenum sfBlendEquation::UInt32 begin
    sfBlendEquationAdd = 0
    sfBlendEquationSubtract = 1
    sfBlendEquationReverseSubtract = 2
end


struct sfBlendMode
    colorSrcFactor::sfBlendFactor
    colorDstFactor::sfBlendFactor
    colorEquation::sfBlendEquation
    alphaSrcFactor::sfBlendFactor
    alphaDstFactor::sfBlendFactor
    alphaEquation::sfBlendEquation
end

struct sfColor
    r::sfUint8
    g::sfUint8
    b::sfUint8
    a::sfUint8
end

# const CSFML_GRAPHICS_API = CSFML_API_IMPORT

struct sfFontInfo
    family::Cstring
end

const sfGlslVec2 = sfVector2f
const sfGlslIvec2 = sfVector2i

struct sfGlslBvec2
    x::sfBool
    y::sfBool
end

const sfGlslVec3 = sfVector3f

struct sfGlslIvec3
    x::Cint
    y::Cint
    z::Cint
end

struct sfGlslBvec3
    x::sfBool
    y::sfBool
    z::sfBool
end

struct sfGlslVec4
    x::Cfloat
    y::Cfloat
    z::Cfloat
    w::Cfloat
end

struct sfGlslIvec4
    x::Cint
    y::Cint
    z::Cint
    w::Cint
end

struct sfGlslBvec4
    x::sfBool
    y::sfBool
    z::sfBool
    w::sfBool
end

struct sfGlslMat3
    array::NTuple{9, Cfloat}
end

struct sfGlslMat4
    array::NTuple{16, Cfloat}
end

struct sfFloatRect
    left::Cfloat
    top::Cfloat
    width::Cfloat
    height::Cfloat
end

struct sfIntRect
    left::Cint
    top::Cint
    width::Cint
    height::Cint
end

struct sfGlyph
    advance::Cfloat
    bounds::sfFloatRect
    textureRect::sfIntRect
end

@cenum sfPrimitiveType::UInt32 begin
    sfPoints = 0
    sfLines = 1
    sfLineStrip = 2
    sfTriangles = 3
    sfTriangleStrip = 4
    sfTriangleFan = 5
    sfQuads = 6
    sfLinesStrip = 2
    sfTrianglesStrip = 4
    sfTrianglesFan = 5
end


struct sfTransform
    matrix::NTuple{9, Cfloat}
end

const sfTexture = Cvoid
const sfShader = Cvoid

struct sfRenderStates
    blendMode::sfBlendMode
    transform::sfTransform
    texture::Ptr{sfTexture}
    shader::Ptr{sfShader}
end

const sfShapeGetPointCountCallback = Ptr{Cvoid}
const sfShapeGetPointCallback = Ptr{Cvoid}

@cenum sfTextStyle::UInt32 begin
    sfTextRegular = 0
    sfTextBold = 1
    sfTextItalic = 2
    sfTextUnderlined = 4
    sfTextStrikeThrough = 8
end


const sfCircleShape = Cvoid
const sfConvexShape = Cvoid
const sfFont = Cvoid
const sfImage = Cvoid
const sfRectangleShape = Cvoid
const sfRenderTexture = Cvoid
const sfRenderWindow = Cvoid
const sfShape = Cvoid
const sfSprite = Cvoid
const sfText = Cvoid
const sfTransformable = Cvoid
const sfVertexArray = Cvoid
const sfVertexBuffer = Cvoid
const sfView = Cvoid

struct sfVertex
    position::sfVector2f
    color::sfColor
    texCoords::sfVector2f
end

@cenum sfVertexBufferUsage::UInt32 begin
    sfVertexBufferStream = 0
    sfVertexBufferDynamic = 1
    sfVertexBufferStatic = 2
end
