module WWURaster

using Images
using LinearAlgebra
using FileIO

export draw_line1, draw_line2
export task1test, task3test

""" draw_line(canvas, p1, p2)
Draw a white line segment between points p1 and p2 in canvas.
    Canvas is an image of RGB{Float32}
    p1 and p2 are 2-tuples of Int
    The slope of the line is between 0 and 1.
"""
function draw_line1(canvas, p1, p2)
    white = RGB{Float32}(1.0, 1.0, 1.0)

    #TODO 

end # draw_line1

""" draw_line(canvas, p1, p2, v1, v2)
Draw a line segment between points p1 and p2 in canvas, 
interpolating its color between v1 and v2.
    Canvas is an image of RGB{Float32}
    p1 and p2 are 2-tuples of Int
    v1 and v2 are colors of type RGB{Float32}
    The slope of the line is between 0 and 1.
"""
function draw_line2(canvas, p1, p2, v1, v2)

end # draw_line2

function task1test()

    canvas = zeros(RGB{Float32}, 600, 600)

    p1 = (4,10)

    for y2 = 100:100:500
        draw_line1(canvas, p1, (500, y2))
    end

    canvas = transpose(canvas[:, end:-1:1])
    save(File(format"PNG", "t1out.png"), colorview(RGB, canvas))
    canvas
end # task1test

function task3test()

    canvas = zeros(RGB{Float32}, 600, 600)

    red = RGB{Float32}(0.9, 0.0, 0.0)
    blue = RGB{Float32}(0.0, 0.0, 0.8)
    p2 = (4, 300)
    for y2 = 300:20:500
        v1 = RGB{Float32}((y2-200)/300, 1.0, 1.0)
        v2 = RGB{Float32}(1.0, (y2-200)/300, 1.0)
        draw_line2(canvas, p2, (500, y2), v1, v2)
    end

    canvas = transpose(canvas[:, end:-1:1])

    save(File(format"PNG", "t3out.png"), colorview(RGB, canvas))
    canvas
end # task3test


end # module
