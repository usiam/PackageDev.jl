using PackageDev
using Test

## ADD TESTS HERE ##

# works if exported
my_f(2, 1)

# have to specify where the function lives if not exported
PackageDev.my_f(2, 1)

@testset "PackageDev.jl" begin
    # my_f(x, y) = 2x + 3y
    @test my_f(2, 1) == 7
    @test my_f(2, 3) == 13

end

# to test open the REPL and go to pkg using ] and then run `test <PackageName>`