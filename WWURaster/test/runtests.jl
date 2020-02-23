using Test

using FileIO
using Images

using WWURaster

@testset "Task 1" begin

    t1out = task1test()
    gt = RGB.(load("t1.png"))
    @test gt == t1out

end # test set Task 1

@testset "Task 3" begin

    t3out = n0f8.(task3test())
    gt = load("t3.png")
    @test gt == t3out

end # test set Task 3

