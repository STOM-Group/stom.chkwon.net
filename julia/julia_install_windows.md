---
layout: page
title: How to install Julia + JuMP in Windows
---


***Before you begin, make it sure that you have installed Gurobi in your system.***

[Go back to the main tutorial.](/julia)

<!-- ## Brief Version

Step 1. Download Julia from [the official website](http://julialang.org/downloads/) and install.

Step 2. Add the Julia installation folder to the system PATH variable.

Step 3. Open Julia in the command prompt.

Step 4. Install packages.

~~~
julia> Pkg.add("JuMP")
julia> Pkg.add("Gurobi")
~~~

Step 5. Test the following script:

~~~
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


## Detailed Version -->


<!-- C:\Users\chkwon\AppData\Local\Julia-0.4.3 -->

**Step 1.** Download Julia from [the official website](http://julialang.org/downloads/). (Select an appropriate version: 32-bit or 64-bit, same as your Gurobi Optimizer version.)

<img src="../images/windows/download.png">

**Step 2.** Install Julia in `C:\julia`.

<img src="../images/windows/install_julia.png">


<!-- Step 3. Open “Control Panel > Systems and Security > System”, and click “Advanced system settings”:

<img src="../images/windows/3.png">

Step 4. Click “Environment Variables…”, and find the “Path” variable from System variables.

<img src="../images/windows/4.png">

Step 5. Click “Edit…” and add `;C:\julia;C:\julia\bin` to the end of the existing list.

<img src="../images/windows/5.png">

Press “OK” and “OK”, and close the Control Panel. -->

**Step 3.** Open a Command Prompt and enter the following command:

~~~
setx PATH "%PATH%;C:\julia\bin"
~~~

<img src="../images/windows/set_path.png">

If you don’t know how to open a Command Prompt, see [this link](http://windows.microsoft.com/en-us/windows/command-prompt-faq) (choose your Windows version, and see “How do I get a command prompt”)

**Step 4.** Open a ***NEW*** command prompt and type `echo %path%`.

<img src="../images/windows/echo_path.png">

The output must include `C:\julia\bin` in the end. If not, you must have something wrong.

**Step 5.** Run `julia`.

<img src="../images/windows/run_julia.png">

You have successfully installed the Julia Language on your Windows computer. Now it’s time for installing additional packages for mathematical programming.

**Step 6.** On your julia prompt, type

~~~ julia
Pkg.add("JuMP")
Pkg.add("Gurobi")
~~~

<img src="../images/windows/install_jump.png">
<img src="../images/windows/install_gurobi.png">

**Step 7.** Open Notepad (or any other text editor, for example [Atom](http://atom.io)) and type the following, and save the file as `script.jl` in some folder of your choice.

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

**Step 8.** Press and hold your `Shift` Key and right-click the folder name, and choose “Open command window here”

<img src="../images/windows/11-1.png">
<img src="../images/windows/11-2.png">


**Step 9.** Type `dir` to see your script file `script.jl`.

<img src="../images/windows/12.png">


**Step 10.** Type `julia script.jl` to run your julia script.

<img src="../images/windows/13.png">

After a few seconds, the result of your julia script will be printed. Done.

Now you are ready. Read more about [the Julia Language](http://docs.julialang.org/) and [the JuMP package](http://jump.readthedocs.org/en/latest/).


[Go back to the main tutorial.](/julia)
