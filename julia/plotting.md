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

~~~ python
Pkg.add("PyPlot")

using PyPlot
x = linspace(0,2*pi,1000); y = sin(3*x + 4*cos(2*x));
plot(x, y, color="red", linewidth=2.0, linestyle="--")
title("A sinusoidally modulated sinusoid")
savefig("myplot.pdf")
~~~

In the first time of using PyPlot, it will take some time to precompile.

### PyPlot Examples

- [Various Julia plotting examples using PyPlot](https://gist.github.com/gizmaa/7214002)


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
