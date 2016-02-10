---
layout: page
title: CPLEX
permalink: /cplex/
subtitle:
---

CPLEX is an optimization solver, for Linear/Quadratic Programming, Mixed Linear/Quadratic Integer Programming. CPLEX is a <em>de facto</em> standard solver for solving such problems.

* TOC
{:toc}

## Downloading and Installing CPLEX
CPLEX is freely available for academics.  You can follow this step by step guide to install:

1. Log in at: https://www-304.ibm.com/ibm/university/academic/pub/jsps/assetredirector.jsp?asset_id=1070.
2. Follow the instructions on the page.
<a href="/resources/images/ibm.png"><img class="aligncenter wp-image-430 size-medium" src="/resources/images/ibm.png" alt="Screenshot 2014-07-20 23.22.37" width="300" height="174" /></a>
3. Download an appropriate version to your system.
4. Follow [this instruction](http://faculty.smcm.edu/acjamieson/f12/480CPLEX.pdf) to install.

### Installing CPLEX on Mac OS X
The instruction includes how to deal with `.bin` file on Mac OS X:

1. Download  `cplex_studio126.osx.bin`. Place the  file in your home directory (`/Users/[Your User Name]`). Copying and  pasting  from  the  Download  directory  will work  fine here.
2. To  install, open  Terminal.  To do  this,  click on  the  magnifying  glass  in the  top  right corner of  your screen  and type  ` Terminal ` and  hit  enter.
3. At  the  prompt, type  in  `/bin/bash  ~/cplex_studio126.osx.bin`  and  hit  enter. Follow all the prompts.



## Using CPLEX Interfaces

### Julia
You can use the Julia Language to work with CPLEX solvers. See <a title="Julia" href="http://stom.chkwon.net/julia/">this instruction</a>.

### MATLAB
Inside MATLAB, you can directly call CPLEX solvers. See <a title="" href="http://pic.dhe.ibm.com/infocenter/cosinfoc/v12r2/index.jsp?topic=/ilog.odms.cplex.help/Content/Optimization/Documentation/CPLEX/_pubskel/CPLEX1130.html" rel="nofollow">this help</a>. Run MATLAB, and type `pathtool`. Add the CPLEX MATLAB folder to the path. The folder location in Mac OS X is:

~~~
/User/[your user name]/Applications/IBM/ILOG/CPLEX_Studio126/cplex/matlab
~~~

### Other Languages
You can use CPLEX with C++, Java, Python. If you want to use C++ or Java to work with CPLEX, you can also do so. C++ is usually faster and proficiency in C++ is very helpful when you seek a job. It's your call.
<h1>Exercise Tasks to Complete</h1>
After you install, please do the following task. I attached <a href="http://www.chkwon.net/wordpress/wp-content/uploads/2012/12/network_example.zip">network example files</a>. One for network structure, the other for travel demand. Please solve the min cost network flow problem based on those data.
<ol>
	<li>Solve the problem as a linear program. (using <a title="" href="http://pic.dhe.ibm.com/infocenter/cosinfoc/v12r2/index.jsp?topic=%2Filog.odms.cplex.help%2FContent%2FOptimization%2FDocumentation%2FCPLEX%2F_pubskel%2FCPLEX1184.html" rel="nofollow">cplexlp</a> function)</li>
	<li>Solve the problem as an integer program. (using <a title="" href="http://pic.dhe.ibm.com/infocenter/cosinfoc/v12r2/index.jsp?topic=%2Filog.odms.cplex.help%2FContent%2FOptimization%2FDocumentation%2FCPLEX%2F_pubskel%2FCPLEX1194.html" rel="nofollow">cplexmilp</a> function)</li>
</ol>
Objectives of this task are:
<ul>
	<li>To keep your computing environments ready for advanced research works.</li>
	<li>To be familiar with CPLEX solvers.</li>
	<li>To learn how to read Excel files in MATLAB.</li>
	<li>To know how to deal with network data.</li>
</ul>







## Parameter Settings
The CPLEX solver can be fine tuned by adjusting its parameters. Two steps:
<ol>
     <li>Find a correct parameter name in <a href="http://www-01.ibm.com/support/knowledgecenter/#!/SSSA5P_12.2.0/ilog.odms.cplex.help/Content/Optimization/Documentation/CPLEX/_pubskel/CPLEX916.html" target="_blank">the topical list</a> or <a href="http://www-01.ibm.com/support/knowledgecenter/#!/SSSA5P_12.2.0/ilog.odms.cplex.help/Content/Optimization/Documentation/CPLEX/_pubskel/CPLEX934.html" target="_blank">the list of all parameters</a>. </li>
     <li>Set a value for the parameter and pass it to the solver.</li>
</ol>

The second step will vary for each programming language. Suppose we want to limit the CPU time of the solver to 3600 seconds. The parameter for this purpose is found <a href="http://www-01.ibm.com/support/knowledgecenter/#!/SSSA5P_12.2.0/ilog.odms.cplex.help/Content/Optimization/Documentation/CPLEX/_pubskel/CPLEX1072.html" target="_blank">here</a>.

### MATLAB
MATLAB uses the same names as in Python. So, the parameter name is `timelimit`. Do the following:

~~~ matlab
options = cplexoptimset('timelimit', 3600)
x = cplexmilp(f,Aineq,bineq,Aeq,beq,sostype,sosind,soswt,lb,ub,ctype,x0,options)
~~~

Read <a href="http://www-01.ibm.com/support/knowledgecenter/#!/SSSA5P_12.6.1/ilog.odms.cplex.help/CPLEX/MATLAB/topics/gs_param.html" target="_blank">this document</a>.

### Java
Read: <a href="http://spartanideas.msu.edu/2014/05/11/setting-cplex-parameters-in-java-revisited/" target="_blank">Setting CPLEX Parameters in Java Revisited</a>.

### Julia
In <a title="Julia" href="http://stom.chkwon.net/resources/computer-help/julia/">Julia</a> and the JuMP package, the parameter names are same as in C. So the correct parameter name is `CPX_PARAM_TILIM` in this case.

~~~ julia
m = Model(solver=CplexSolver(CPX_PARAM_TILIM=3600))
~~~

### GAMS
Read <a href="https://www.gams.com/help/index.jsp?topic=%2Fgams.doc%2Fsolvers%2Fcplex%2Findex.html" target="_blank">this document</a>.

~~~
Option ResLim = x;
~~~
<blockquote>Sets the time limit in seconds. The algorithm will terminate and pass on the current solution to GAMS.</blockquote>
