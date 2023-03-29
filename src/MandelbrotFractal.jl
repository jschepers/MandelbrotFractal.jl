module MandelbrotFractal

function mandelbrot(a)
    z = 0
    for i = 1:50
        z = z^2 + a
        if abs.(z) > 2
            break
        end
    end
    return z
end


export mandelbrot
end

