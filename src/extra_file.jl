my_f(x, y) = 2x + 3y

# must import the ForwardDiff package in the module (PackageDev in this case) to use this
derivative_of_my_f(x, y) = ForwardDiff.derivative(x -> my_f(x, y), x)

