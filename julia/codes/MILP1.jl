# If you are using Clp/Cbc on JuliaBox.org
# using JuMP
# m = Model()

# If you are using CPLEX
# using JuMP, CPLEX
# m = Model(solver=CplexSolver())

# If you are using Gurobi
using JuMP, Gurobi
m = Model(solver=GurobiSolver())

@defVar(m, x1 >=0, Int)
@defVar(m, x2, Int)
@defVar(m, y1 >=0)
@defVar(m, z1, Bin)

@setObjective(m, Max, 4x1 - 6x2 + 5y1 + z1)

@addConstraint(m, 2.5x1 - 3x2 + 2.2y1 -  z1 <= 117)
@addConstraint(m,   2x1 - 2x2 +    y1 - 5z1 <= 113)
@addConstraint(m,    x1 -  x2 + 3.1y1 - 2z1 <= 118)
@addConstraint(m,   2x1 - 5x2 +   2y1 -  z1 <= 121)

# Initial values can be specified for warm start
setValue(x1, 3)
setValue(z1, 0)

# Printing the optimization model
print(m)

status = solve(m);

println("Status = $status")


println("Objective value: ", getObjectiveValue(m))
println("x1 = ", getValue(x1))
println("x2 = ", getValue(x2))
println("y1 = ", getValue(y1))
println("z1 = ", getValue(z1))
