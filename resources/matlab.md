---
layout: page
title: Matlab
permalink: /matlab/
subtitle:
---

<h1>Some Readings</h1>
<ul>
	<li>(<a title="" href="http://www.glue.umd.edu/~tvp/401/matlabprob.html" rel="nofollow">LINK</a>) - Common Problems with MATLAB</li>
	<li>(<a title="" href="http://www.rz.uni-freiburg.de/dienste/plattformen/ibm/compserver/frames/matlab/techdoc/matlab_prog/ch7_perf.html" rel="nofollow">LINK</a>) - Maximizing MATLAB Performance</li>
	<li>(<a title="" href="http://unix.eng.ua.edu/MathWorks/manuals/techdoc/matlab_prog/ch8_pr18.html" rel="nofollow">LINK</a>) - Optimizing for Speed</li>
	<li>(<a title="" href="http://www-h.eng.cam.ac.uk/help/tpl/programs/Matlab/faster_scripts.html" rel="nofollow">LINK</a>) - Matlab - faster scripts</li>
	<li>(<a title="" href="http://www-h.eng.cam.ac.uk/help/tpl/programs/Matlab/tricks.html" rel="nofollow">LINK</a>) - Matlab vectorisation tricks</li>
	<li>(<a title="" href="http://www.mathworks.com/support/tech-notes/1100/1109.shtml" rel="nofollow">LINK</a>) - Code Vectorization Guide</li>
	<li><a title="" href="http://www.spatial-econometrics.com/" rel="nofollow">Econometrics Toolbox for MATLAB</a></li>
</ul>
<div></div>
<h1>MATLAB Central File Exchange</h1>
<ul>
	<li><a title="" href="http://www.mathworks.com/matlabcentral/fileexchange/16179-save2pdf" rel="nofollow"><cci>save2pdf</cci></a> - Save figures as PDF files</li>
	<li><a title="" href="http://www.mathworks.com/matlabcentral/fileexchange/25298-fig2texps-export-matlab-figure-to-latex" rel="nofollow"><cci>fig2texPS</cci></a> - Export MATLAB figures to LaTeX</li>
	<li><a title="" href="http://www.mathworks.com/matlabcentral/fileexchange/22022" rel="nofollow"><cci>matlab2tikz</cci></a> - Save MATLAB figures as <cci>tikzpicture</cci> in LaTeX.</li>
</ul>
<div></div>
<h1>Recipes</h1>
<h2>Some useful expressions</h2>
<ul>
	<li>Custom function</li>
</ul>
<div id="sourceblock1">
<div>
<pre>x = fminunc(@(x) myfun(x,a),x0);
  myfun = @(x) x+2+a;</pre>
</div>
<div></div>
</div>
<ul>
	<li>2D plotting of 3D data</li>
</ul>
<div id="sourceblock2">
<div>
<pre>plot([1:10], squeeze(r(1,1,:)));</pre>
</div>
<div></div>
</div>
<ul>
	<li>Repeat matrix</li>
</ul>
<div id="sourceblock3">
<div>
<pre>repmat(A, [1,1,N]);</pre>
</div>
<div></div>
</div>
<ul>
	<li>Setting font sizes in plots</li>
</ul>
<div id="sourceblock4">
<div>
<pre>set(0,'DefaultAxesFontSize',14)</pre>
</div>
<div></div>
</div>
<div></div>
<h2>How to control the number of markers in figure?</h2>
When the size of data is large, using markers in plot is a pain. MATLAB simply puts all the data points with markers, so the plot looks very ugly. I found that drawing three times for a data series looks stupid, but definitely works. Please see the following codes as an example:
<div></div>

```matlab
num_data = 200;
num_marker = 10;
marker_space = num_data / num_marker;

% x data
x = linspace(0,2,num_data); 

% y data
y1 = exp(x);
y2 = 5-exp(-x);

% make font size big
set(0,'DefaultAxesFontSize',14) 

% draw a figure
fig1 = figure;
hold on; grid on;

% (1) these two for legend
plot1 = plot(x(1),y1(1), 'ko-','LineWidth',2);
plot2 = plot(x(1),y2(1), 'b*--','LineWidth',2);

% (2) these two for markers
plot(x(1:marker_space:num_data), y1(1:marker_space:num_data), 'ko','LineWidth',2);
plot(x(1:marker_space:num_data), y2(1:marker_space:num_data), 'b*','LineWidth',2);

% (3) these two for lines
plot(x,y1,'k','LineWidth',2);
plot(x,y2,'b--','LineWidth',2);

legend('y_1','y_2','Location','Best');
xlabel('Name of x data gamma ');
ylabel('Name of y data');

% save the figure as a 600-dpi PDF file
save2pdf('figure_filename',fig1,600);
```

To save the figure as a PDF file, I recommend <a title="" href="http://www.mathworks.com/matlabcentral/fileexchange/16179-save2pdf" rel="nofollow">`save2pdf`</a>. The result is:

<a href="http://www.chkwon.net/resources/computer-help/matlab/matlab_marker_plot/" rel="attachment wp-att-97"><img class="alignnone size-full wp-image-97" src="/resources/images/matlab_marker_plot.png" alt="matlab_marker_plot" /></a>
