
# If you are using Clp/Cbc on JuliaBox.org
# using JuMP
# m = Model()

# If you are using CPLEX
# using JuMP, CPLEX
# m = Model(solver=CplexSolver())

# If you are using Gurobi
using JuMP, Gurobi
m = Model(solver=GurobiSolver())



@defVar(m, 0<= x1 <=40)
@defVar(m, x2 >=0)
@defVar(m, x3 >=0)

@setObjective(m, Max, x1 + 2x2 + 3x3)

@addConstraint(m, const1,  -x1 +  x2 + x3 <= 20)
@addConstraint(m, const2,   x1 - 3x2 + x3 <= 30)

println("------------------------------------------")
println("Printing the optimization model:")
print(m)
println("------------------------------------------")

status = solve(m);

println("------------------------------------------")
println("Status = $status")
println("------------------------------------------")


println("------------------------------------------")
println("Optimal Objective Function value: ", getObjectiveValue(m))
println("------------------------------------------")
println("Optimal Solutions:")
println("x1 = ", getValue(x1))
println("x2 = ", getValue(x2))
println("x3 = ", getValue(x3))
println("------------------------------------------")
println("Dual Variables:")
println("dual1 = ", getDual(const1))
println("dual2 = ", getDual(const2))
