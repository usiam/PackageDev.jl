module PackageDev

# must add ForwardDiff in `Project.toml`
using ForwardDiff

# Everything runs from the module which is the top level module with the same name as the package

greet(name) = println("Hello $name!")

# We don't want to put everything in one file so
include("extra_file.jl")

# export the function my_f from the `extra_file.jl` file to making it directly available for 
# anyone who does `using`
export my_f, derivative_of_my_f

# use export mostly for others to use interactively.
# Anything internal should not be exported as a rule of thumb.

end
