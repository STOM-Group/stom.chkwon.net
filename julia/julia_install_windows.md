---
layout: page
title: How to install Julia + JuMP in Windows
---


**Before you begin, make it sure that you have installed Gurobi in your system.**

Step 1. Download Julia from http://julialang.org/downloads/ (Select an appropriate version: 32-bit or 64-bit, same as your Gurobi Optimizer version.)

<img src="../images/windows/1.png">

Step 2. Extract the downloaded file, and move the extracted folder to `C:\julia`.

<img src="../images/windows/2.png">

Step 3. Open “Control Panel > Systems and Security > System”, and click “Advanced system settings”:

<img src="../images/windows/3.png">

Step 4. Click “Environment Variables…”, and find the “Path” variable from System variables.

<img src="../images/windows/4.png">

Step 5. Click “Edit…” and add `;C:\julia;C:\julia\bin` to the end of the existing list.

<img src="../images/windows/5.png">

Press “OK” and “OK”, and close the Control Panel.

Step 6. Open a Command Prompt. If you don’t know how to open a Command Prompt, see [this link](http://windows.microsoft.com/en-us/windows/command-prompt-faq) (choose your Windows version, and see “How do I get a command prompt”)

<img src="../images/windows/6.png">

Step 7. Type `echo %path%.

<img src="../images/windows/7.png">

The output must include `C:\julia` in the end. If not, you must have something wrong in Step 5.

Step 8. Type `julia`.

<img src="../images/windows/8.png">

You have successfully installed the Julia Language on your Windows computer. Now it’s time for installing additional packages for mathematical programming.

Step 9. On your julia prompt, type

```julia
julia> Pkg.add("JuMP")
julia> Pkg.add("Gurobi")
```

<img src="../images/windows/9.png">

Step 10. Open Notepad (or any other text editor, for example [Atom](http://atom.io)) and type the following, and save the file as `script.jl` in some folder of your choice.

```julia
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
```

Step 11. Press and hold your `Shift` Key and right-click the folder name, and choose “Open command window here”

<img src="../images/windows/11-1.png">
<img src="../images/windows/11-2.png">


Step 12. Type `dir` to see your script file `script.jl`.

<img src="../images/windows/12.png">


Step 13. Type `julia script.jl` to run your julia script.

<img src="../images/windows/13.png">

After a few seconds, the result of your julia script will be printed. Done.

Now you are ready. Read more about [the Julia Language](http://docs.julialang.org/) and [the JuMP package](http://jump.readthedocs.org/en/latest/).


[Go back to the main tutorial.](/julia)
