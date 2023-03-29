using MandelbrotFractal
using Test

@testset "MandelbrotFractal.jl" begin
    @test mandelbrot(0) == 0
end

