---
layout: page
title: Plotting in Julia
permalink: /julia/plotting/
---

* TOC
{:toc}


There are some options.

- [Gadfly.jl](https://github.com/dcjones/Gadfly.jl) -- Julia native plotting package.
- [PyPlot.jl](https://github.com/stevengj/PyPlot.jl) -- calling a python module `matplotlib.pyplot` for plotting. If you can install Python and matplotlib in your computer, this seems the most powerful and stable plotting tool.

Read [this WikiBooks page](https://en.wikibooks.org/wiki/Introducing_Julia/Plotting) for an introduction.

If you need a simple tool, select Gadfly.jl. If you need a powerful tool, select PyPlot.jl. The power of PyPlot comes in at the cost of installing Python.

## PyPlot

### Installing PyPlot

To use PyPlot, you need Python and matplotlib. The Anaconda Python is an easy-to-install distribution of Python and matplotlib (and many other python packages).

1. Download and install [the Anaconda Python 2.7](https://www.continuum.io/downloads).
2. Open a new terminal window and run Julia. Install PyPlot and test it:

~~~ julia
Pkg.add("PyPlot")

using PyPlot
x = linspace(0,2*pi,1000); y = sin(3*x + 4*cos(2*x));
plot(x, y, color="red", linewidth=2.0, linestyle="--")
xlabel(L"value of $x$")
ylabel(L"\sin(3x + 4\cos(2x))")
title("Test plotting")
savefig("myplot.pdf")
~~~

In the first time of using PyPlot, it will take some time to precompile.

### PyPlot Examples

Since PyPlot.jl calls functions from matplotlib, the following documents are helpful.

- [Matplotlib Beginner's Guide](http://matplotlib.org/users/beginner.html)
- [Matplotlib Examples](http://matplotlib.org/examples/index.html)

Some translation works from Python to Julia are necessary. Examples are provided in the following link:

- [Various Julia plotting examples using PyPlot](https://gist.github.com/gizmaa/7214002)

### Tips


#### Avoiding Type-3 fonts

Some journal submission systems don't like PDF files saved by matplotlib. It is usually the system cannot handle some newer font styles. There are two ways:

**Method 1.** Using options of `matplotlib`

We can specifically tell matplotlib to avoid Type-3 fonts as explained in [this link](http://nerdjusttyped.blogspot.com/2010/07/type-1-fonts-and-matplotlib-figures.html). Create a file called `matplotlibrc` (without any extension in the filename) and place it in the same directory as the Julia script. Put the following commands in the `matplotlibrc` file:

~~~
ps.useafm           : True
pdf.use14corefonts  : True
text.usetex         : True
~~~

**Method 2.** Using the `pgf` package of LaTeX

Instead of `savefig("myplot.pdf")`, one can `savefig("myplot.pgf")`, which will save the figure as a set of LaTeX commands that uses the `pgf` package. Then use the following command to include the figure in the main LaTeX document:

~~~ latex
\begin{figure} \centering
\resizebox{0.7\textwidth}{!}{\input{myplot.pgf}}
\caption{Figure caption goes here..}
\label{fig:myplot}
\end{figure}
~~~

Don't forget to include `\usepackage{pgf}` in the preamble.


## Gadfly

### Installing Gadfly

Install

~~~ python
Pkg.add("Gadfly")
~~~

Test it:

~~~ python
using Gadfly
plot(x=collect(1:100), y=sort(rand(100)), Guide.XLabel("Index"), Guide.YLabel("Step"))
~~~

It will open your web browser and output an SVG image.

To save a plot as a PNG file:

~~~ python
using Gadfly
myplot = plot(x=collect(1:100), y=sort(rand(100)), Guide.XLabel("Index"), Guide.YLabel("Step"))
draw( PNG("myplot.png", 6inch, 3inch), myplot )
~~~

### Additional installation for saving as PDF

Sometimes, we want to save the plot as a PDF file. Install `Cairo`.

~~~ python
Pkg.add("Cairo")
~~~


~~~ python
using Gadfly
myplot = plot(x=collect(1:100), y=sort(rand(100)), Guide.XLabel("Index"), Guide.YLabel("Step"))
draw( PDF("myplot.pdf", 6inch, 3inch), myplot )
~~~

It will create `myplot.pdf` in the directory from which you ran julia.

### Gadfly Manual

Read the [Gadfly manual](http://gadflyjl.org/).


<!--
If Cairo does not install properly, try the following:
**(NOTE: This may not work for your system. I tested this with my Mac OS X machine, but it may not work for you.)**

In the julia prompt:

~~~julia
Pkg.add("Homebrew")
using Homebrew
Homebrew.rm("glib")
Homebrew.add("glib")
Homebrew.rm("libpng")
Homebrew.add("libpng")
Homebrew.rm("cairo")
Homebrew.add("cairo")
Homebrew.rm("pango")
Homebrew.add("pango")
Pkg.add("Cairo")
~~~

Then, close your current julia and reopen julia. -->
