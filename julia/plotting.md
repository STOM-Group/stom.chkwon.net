---
layout: default
---

## Plotting in Julia

There are some options.

- [Gadfly.jl](https://github.com/dcjones/Gadfly.jl)
- [Winston.jl](https://github.com/nolta/Winston.jl)
- [PyPlot.jl](https://github.com/stevengj/PyPlot.jl) -- calling a python module `matplotlib.pyplot` for plotting

Read [this WikiBooks page](https://en.wikibooks.org/wiki/Introducing_Julia/Plotting) for an introduction.

You may experience some difficulties in installing the above libraries, especially if you are using Windows.

I haven't tried, but there is a web-service [Plotly for Julia](https://plot.ly/julia/), which looks easy to use. ([You have to pay for 10+ private files.](https://plot.ly/product/plans/))

# Gadfly

To plot graphs, we use the Gadfly.jl package. Install

```julia
Pkg.add("Gadfly")
```

Test it:

```julia
using Gadfly
plot(x=collect(1:100), y=sort(rand(100)), Guide.XLabel("Index"), Guide.YLabel("Step"))
```

It will open your web browser and output an SVG image.

Read the [Gadfly manual](http://gadflyjl.org/).

Sometimes, we want to save the plot as a PDF file. Do the following:
**(NOTE: This may not work for your system. I tested this with my Mac OS X machine, but it may not work for you.)**

In the julia prompt:

```julia
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
```

Then, close your current julia and reopen julia.

```julia
using Gadfly
myplot = plot(x=collect(1:100), y=sort(rand(100)), Guide.XLabel("Index"), Guide.YLabel("Step"))
draw( PDF("myplot.pdf", 6inch, 3inch), myplot )
```

It will create `myplot.pdf` in the directory from which you ran julia.
