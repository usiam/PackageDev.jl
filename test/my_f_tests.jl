# test everything to do with my_f function
# use a package called SafeTestsets if you are doing a lot of 
# `include` so that the testing gets modularized i.e. every single @safetest is a completely 
# different environment

# since it is a separate environment we need to import all the packages
using PackageDev
using Test

@testset "PackageDev.jl" begin
    # my_f(x, y) = 2x + 3y
    @test my_f(2, 1) == 7
    @test my_f(2, 3) == 13
    @test my_f(1, 3) == 11 # 2 + 9 = 11
end

@testset "Derivative Tests" begin
    @test derivative_of_my_f(2, 1) == 2
end
