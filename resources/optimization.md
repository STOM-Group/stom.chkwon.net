---
layout: page
title: Optimization Solvers
permalink: /optimization/
subtitle:
---

## Survey
A good list of LP software is provided in the following article published in <a href="http://www.orms-today.org/" target="_blank">OR/MS Today</a>:
<ul>
	<li><a href="http://viewer.zmags.com/publication/21b06022#/21b06022/42" target="_blank">Software Survey: Linear Programming</a> -- by Robert Fourer</li>
</ul>

[Julia](/julia) is a strong programming language with good support from [optimization communities ([JuliaOpt](http://juliaopt.org)). Read [my Julia guide](/julia).


## Selected Optimization Solvers with MATLAB Support

### CPLEX
CPLEX is one of the most popular and most advanced optimization solvers, especially for LP and MILP. CPLEX is free for faculty and students. See <a title="CPLEX" href="http://www.chkwon.net/resources/computer-help/cplex/">this page</a> for details.

### CVX
<ul>
	<li><a href="http://cvxr.com/cvx/" target="_blank">CVX: Matlab Software for Disciplined Convex Programming</a></li>
</ul>

### IPOPT
<a href="https://projects.coin-or.org/Ipopt" target="_blank">Ipopt (Interior Point OPTimizer)</a> is a <a href="http://www.coin-or.org/" target="_blank">COIN-OR</a> project, which is open source. for large-scale nonlinear optimization. It provides interfaces with most major computer languages including MATLAB. The following steps worked for me.
<ol>
	<li>Go <a href="http://www.coin-or.org/download/binary/Ipopt/" target="_blank">here</a> and download mex files. The file name looks like [cci]Ipopt-3.11.0-linux64mac64win32win64-matlabmexfiles.zip[/cci]</li>
	<li>Unzip the downloaded file and put the files somewhere.</li>
	<li>Open MATLAB and type [cci]pathtool[/cci] to add the Ipopt mex folder to the path.</li>
	<li>Type [cci]doc ipopt[/cci] to check the installation and to read the help document.</li>
</ol>

### GLPK
<ul>
	<li><a href="http://www.gnu.org/software/glpk/glpk.html" target="_blank">GLPK (GNU LP Kit)</a> -- with <a href="http://glpkmex.sourceforge.net/" target="_blank">mex files</a> for MATLAB</li>
</ul>
&nbsp;

&nbsp;
