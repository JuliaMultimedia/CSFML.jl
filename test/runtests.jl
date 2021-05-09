using CSFML.LibCSFML
using Test

@testset "version" begin
    @test LibCSFML.CSFML_VERSION_MAJOR == 2
    @test LibCSFML.CSFML_VERSION_MINOR == 5
end
