# Solving Shortest-Path Problems
# by Dijkstra's Algorithm
# implemented in Graphs.jl
#
# Changhyun Kwon
# May 1, 2015

using Graphs


# Theses variables are accessible within getShortestPath(state)
# origin, destination
function getShortestPath(state)
	_current = destination
	_rpath = _current
	_parent = -1

	while _parent != origin
		_parent = state.parents[_current]
		_rpath = [_rpath; _parent]
		_current = _parent
	end

	_path = zeros(Int, length(_rpath))
	for i=length(_rpath):-1:1
		_path[length(_rpath)-i+1] = _rpath[i]
	end
	_path
end

# Theses variables are accessible within getShortestPath(state)
# start_node, end_node, origin, destination
function getShortestX(state)
	_x = zeros(Int, length(start_node))
	_path = getShortestPath(state)

	for i=1:length(_path)-1
		_start = _path[i]
		_end = _path[i+1]

		for j=1:length(start_node)
			if start_node[j]==_start && end_node[j]==_end
				_x[j] = 1
				break
			end
		end

	end
	_x
end


# Start the Stopwatch
tic()

# Reading the network data
data, header = readdlm("network-data.csv", ',', Float64, '\r'; header=true)
start_node = convert(Array{Int64}, data[:,1])
end_node = convert(Array{Int64}, data[:,2])
link_length = data[:,3]
no_node = max(maximum(start_node), maximum(end_node))
no_arc = length(start_node)

# Set the origina and destination nodes
origin = 1;
destination = 15;

# Creating a graph
graph = simple_inclist(no_node)
for i=1:no_arc
	add_edge!(graph, start_node[i], end_node[i])
end

println("Number of nodes = $(num_vertices(graph)), Number of links = $(num_edges(graph))")
println("Origin = $origin, Destination = $destination")

# Run Dijkstra's Algorithm from the origin node to all nodes
s = dijkstra_shortest_paths(graph, link_length, origin)

# Retrieving the shortest path
path = getShortestPath(s)

# Retrieving the 'x' variable in a 0-1 vector
x = getShortestX(s)

# Stop the Stopwatch
toc()

# The cost of shortest path
println("Cost is $(s.dists[destination])")	# directly from Dijkstra's algorithm
println("Cost is $(dot(link_length, x))")	# c'x
println("Cost is $(link_length' * x)")		# c'x

# Print the shortest path
println(path')
