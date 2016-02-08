# Solving Shortest-Path Problems
# by Linear Programming
# via JuMP.jl
#
# Changhyun Kwon
# May 1, 2015

using JuMP
using Gurobi
# using CPLEX # If you use CPLEX, uncomment this.

function getShortestPathLP(origin, destination)
	b = zeros(no_node)
	b[origin] = 1
	b[destination] = -1

	# m = Model() # If you are using Clp/Cbc on JuliaBox.org
	# m = Model(solver=CplexSolver()) # If you are using CPLEX
	m = Model(solver=GurobiSolver()) # If you are using Gurobi

	@defVar(m, 0<= x[links] <=1)
	# @defVar(m, x[links], Bin)

	@setObjective(m, Min, sum{ link_length[i]*x[links[i]], i in 1:length(links) }  )

	for i=1:no_node
		@addConstraint(m, sum{x[(j,k)], (j,k) in links; j==i }
						- sum{x[(j,k)], (j,k) in links; k==i } == b[i])
	end

	# print(m)
	solve(m)

	xxx = getValue(x)
	xx = zeros(no_arc)
	for i=1:no_arc
		xx[i] = xxx[links[i]]
	end

	# Obtaining the Path from X
	current_node = origin
	path = current_node

	while path[length(path)] != destination
		for i=1:length(links)
			if links[i][1]==current_node && round(xxx[links[i]])==1.0
				path = [path; links[i][2]]
				current_node = links[i][2]
			end
		end
	end
	@assert path[length(path)]==destination

	xx, path
end




# Reading the network data
data, header = readdlm("network-data.csv", ',', Float64, '\r'; header=true)
start_node = convert(Array{Int64}, data[:,1])
end_node = convert(Array{Int64}, data[:,2])
link_length = data[:,3]
no_node = max(maximum(start_node), maximum(end_node))
no_arc = length(start_node)

# Creating a graph
links = Array((Int, Int), no_arc)
for i=1:no_arc
   	links[i] = (start_node[i], end_node[i])
end

# Shortest Path Problem as an LP
origin = 1;
destination = 15;
xlp, pathlp = getShortestPathLP(origin, destination)
println(pathlp')

xlp2, pathlp2 = getShortestPathLP(3, 10)
println(pathlp2')
