using MandelbrotFractal
using Test

@testset "MandelbrotFractal.jl" begin
    @test mandelbrot(0) == 0
end

@testset "Plotting" begin
    using UnicodePlots

    y = -1:0.01:1
    x = -2:0.01:0.5


    A = fill(0.0, length(x), length(y))

    for ix = eachindex(x)
        for iy = eachindex(y)
            c = complex(x[ix], y[iy])
            A[ix, iy] = abs(mandelbrot(c))
        end
    end

    heatmap(A)
end
