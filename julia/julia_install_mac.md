---
layout: page
title: How to install Julia + JuMP in Mac OS X
---

**Before you begin, make it sure that you have installed Gurobi in your system.**

Step 1. Download Julia from http://julialang.org/downloads/ (Select an appropriate OS X version.)

<img src="../images/mac/1.png">


Step 2. In your download folder, double-click the downloaded .dmg file to mount it. Drag “Julia-0.x.x.app” file to the “Applications” folder.

<img src="../images/mac/2.png">



Step 3. Open “Terminal.app”. (If you don’t know how to open it, see [this video](https://www.youtube.com/watch?v=zw7Nd67_aFw).) It is convenience to place “Terminal.app” in your dock.

<img src="../images/mac/3.png">



Step 4. In you terminal, enter the following commands:

~~~ bash
touch ~/.bash_profile
open –e ~/.bash_profile
~~~

<img src="../images/mac/4-1.png">

It will open a TextEdit window, enter the following line somewhere:

~~~ bash
export PATH=/Applications/Julia-0.2.1.app/Contents/Resources/julia/bin/:$PATH
~~~

Change “0.2.1” to reflect your Julia version.

<img src="../images/mac/4-2.png">

Save the file and close the TextEdit window. In your terminal, enter the following command:

~~~ bash
source ~/.bash_profile
~~~


Step 5. In your terminal, enter “julia”

<img src="../images/mac/5.png">


Step 6. On your Julia prompt, type

~~~ julia
Pkg.add("JuMP")
Pkg.add("Gurobi")
~~~

<img src="../images/mac/6.png">


Step 7. Open TextEdit (or any other text editor, for example [Atom](http://atom.io)) and type the following, and save the file as “script.jl” in some folder of your choice.

~~~ julia
using JuMP, Gurobi

m = Model(solver=GurobiSolver())

@defVar(m, 0 <= x <= 2 )
@defVar(m, 0 <= y <= 30 )

@setObjective(m, Max, 5x + 3*y )

@addConstraint(m, 1x + 5y <= 3.0 )

print(m)
status = solve(m)

println("Objective value: ", getObjectiveValue(m))
println("x = ", getValue(x))
println("y = ", getValue(y))
~~~

Step 8. Follow [this instruction](http://osxdaily.com/2011/12/07/open-a-selected-finder-folder-in-a-new-terminal-window/) and open a terminal window at the folder that contains your “script.jl”.

Step 9. Type `ls –al` to check your script file.
<img src="../images/mac/9.png">

Step 10. Type `julia script.jl` to run your script.

<img src="../images/mac/10.png">


After a few seconds, the result of your julia script will be printed. Done.


Now you are ready. Read more about [the Julia Language](http://docs.julialang.org/) and [the JuMP package](http://jump.readthedocs.org/en/latest/).

[Go back to the main tutorial.](/julia)
