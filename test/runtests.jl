## ADD TESTS HERE ##

# # works if exported
# my_f(2, 1)

# # have to specify where the function lives if not exported
# PackageDev.my_f(2, 1)
# PackageDev.derivative_of_my_f(2, 1)

using SafeTestsets

@safetestset "My f tests" begin
    include("my_f_tests.jl")
end

# to test open the REPL and go to pkg using ] and then run `test <PackageName>`