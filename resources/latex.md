---
layout: page
title: LaTeX
permalink: /latex/
subtitle:
---

* TOC
{:toc}


## How to start LaTeX

1.  Download and install.
  - [<em>Windows</em>] Download and install <a title="" href="http://www.tug.org/texlive/" rel="nofollow">TeX Live</a>. Install FULL.
  - [<em>Mac OS</em>] Download and install <a title="" href="http://www.tug.org/mactex/" rel="nofollow">MacTeX</a>. Install FULL.
(MacTeX is a redistribution of TeXLive, so they are pretty much same.)
2. An editor called <a title="" href="http://www.tug.org/texworks/" rel="nofollow">TeXworks</a> is included in your installation. Use it to open .tex file and edit. (Mac users can use <a href="http://pages.uoregon.edu/koch/texshop/">TeXShop</a>, also in your installation.)
3. Use <a href="https://gist.github.com/chkwon/821ee403b67aa46ee166" target="_blank">this sample tex file</a> as a quick start guide.
4. Read <a title="" href="http://www.ctan.org/tex-archive/info/lshort/" rel="nofollow">this document</a>. (This is available in many languages; <a title="" href="http://mirror.ctan.org/info/lshort/english/lshort-letter.pdf" rel="nofollow">English</a>, <a title="" href="http://mirror.ctan.org/info/lshort/korean/lshort-kr.pdf" rel="nofollow">Korean</a>, <a title="" href="http://mirror.ctan.org/info/lshort/persian/lshort.pdf" rel="nofollow">Persian</a>, <a title="" href="http://mirror.ctan.org/info/lshort/chinese/lshort-zh-cn.pdf" rel="nofollow">Chinese</a>, and so on.)
5. Start using it.

You may want to watch <a href="https://www.sharelatex.com/blog/latex-guides/beginners-tutorial.html" target="_blank">this video beginners tutorial</a>.

## Template and Tutorial
One simple template is provided:

{% gist 821ee403b67aa46ee166 %}

- Dr. Kwon prepared <a href="https://github.com/chkwon/LaTeX-Paper-Template" target="_blank">a more complicated LaTeX template</a> that also serves as a tutorial. Download the file and learn how to use LaTeX.
- Dr. Kwon also created presentation slide templates for the [University of South Florida](https://github.com/chkwon/USF_Beamer_Template) and the [University at Buffalo](https://github.com/chkwon/UB_Beamer_Template).


## Sample Tasks to Complete for Beginners
After reading the <a title="" href="http://www.ctan.org/tex-archive/info/lshort/" rel="nofollow">this document</a>, you may try to complete the following tasks:

-  Produce a final PDF file.
-  Include a PDF image file (not JPG, GIF, PNG, EPS, etc) to the document.
-  Write a table.
-  Learn how to manage .bib files. I recommend <a title="" href="http://jabref.sourceforge.net/" rel="nofollow">JabRef</a>. (Mac users can use <a href="http://bibdesk.sourceforge.net">BibDesk</a>.)
-  Using .bib and 'bibtex', cite a reference and create a final PDF file that includes a bibliography.

There are several ways to create a final PDF file and include images. I just prefer 'pdflatex' and PDF image formats to other methods and formats.

## Readings

-  <a title="" href="http://www.ctan.org/tex-archive/info/lshort/" rel="nofollow">The Not So Short Introduction to LaTeX2e</a> -- Tobias Oetiker, Hubert Partl, Irene Hyna and Elisabeth Schlegl - A really nice manual for beginners
-  <a title="" href="http://mirrors.ctan.org/info/math/voss/mathmode/Mathmode.pdf" rel="nofollow">Math mode</a>: A superb explanation of the amsmath package and other math-related issues -- Herbert Voß
-  <a title="" href="http://en.wikibooks.org/wiki/LaTeX" rel="nofollow">LaTeX Wikibook</a> - This contains good resources for both beginners and intermediate users. A PDF version is available <a title="" href="http://upload.wikimedia.org/wikipedia/commons/2/2d/LaTeX.pdf" rel="nofollow">here</a>.
-  <a title="" href="http://mirror.ctan.org/info/l2tabu/english/l2tabuen.pdf" rel="nofollow">Obsolete packages and commands</a> -- Mark Trettin (Translated by Jürgen Fenn)
-  <a title="" href="http://uit.no/castl/4727/?colapsemenu=colapsemenu" rel="nofollow">LaTeX for Linguists</a> (but general enough) -- Sylvia Blaho and Patrik Bye
-  <a title="" href="http://www.andy-roberts.net/misc/latex/index.html" rel="nofollow">Getting to grips with LaTeX</a> -- Andrew Roberts
-  <a title="" href="http://www.eng.cam.ac.uk/help/tpl/textprocessing/" rel="nofollow">Text Processing using LaTeX</a> -- Cambridge University
-  <a title="" href="http://www.macrotex.net/texbooks/" rel="nofollow">Recommended TeX and LaTeX Books</a> -- Adam H. Lewenberg
-  <a title="" href="http://mirrors.ctan.org/info/gentle/gentle.pdf" rel="nofollow">A Gentle Introduction to TeX</a> -- Michael Doob
-  <a title="" href="http://mirrors.ctan.org/info/impatient/book.pdf" rel="nofollow">TeX for the Impatient</a> -- Paul W. Abrahams, Kathryn A. Hargreaves, and Karl Berry


## Thesis/Dissertation Templates
- [University of South Florida](http://shell.cas.usf.edu/~saito/grad/)
- [Thesis Templates](https://www.sharelatex.com/templates/thesis)

<!--
## Links

-  <a title="" href="http://www.ctan.org/" rel="nofollow">CTAN</a> - the Comprehensive TeX Archive Network
-  <a title="" href="http://www.tug.org/" rel="nofollow">TUG</a> - TeX Users Group
-  <a title="" href="http://www.ktug.or.kr/" rel="nofollow">KTUG</a> - Korean TeX Users Group {ko}
-  <a title="" href="http://tex.stackexchange.com/" rel="nofollow">Tex LaTeX Stack Exchange</a> - collaborative Q&amp;A
-  <a href="http://www.chkwon.net/wordpress/wp-content/uploads/2012/12/ubthesis-latex.zip">UB Thesis Latex Template</a> - University at Buffalo Thesis Package, retrieved from <a title="" href="http://gitorious.org/ubthesis" rel="nofollow">ubthesis</a> by Justin Boffemmye
-  <a title="" href="http://www.esm.psu.edu/psuthesis/" rel="nofollow">PSU Thesis</a> - Penn State University Thesis Package
-  <a href="http://www.chkwon.net/wordpress/wp-content/uploads/2012/12/PSUThesisSWP.zip">Penn State Thesis Template for Scientific Workplace</a> - PSU Thesis Package for <a title="" href="http://www.mackichan.com/" rel="nofollow">Scientific Workplace</a>
-  <a title="" href="http://www.fauskes.net/pgftikzexamples/" rel="nofollow">PGF and TikZ examples gallery</a>

<div></div> -->


## Useful Tools

-  <a title="" href="http://jabref.sourceforge.net/" rel="nofollow">JabRef</a>- Java GUI for managing BibTeX and other bibliographies
-  <a title="" href="http://www.ctan.org/tex-archive/support/excel2latex/" rel="nofollow">Excel To LaTeX Conversion</a> -- You can create LaTeX codes for tables from an Excel spreadsheet directly.
-  <a title="" href="http://detexify.kirelabs.org/classify.html" rel="nofollow">Detexify</a> -- Drawing a symbol will give you the LaTeX code for it.
-  <a title="" href="http://hevea.inria.fr/index.html" rel="nofollow">HeVeA</a> - A good HTML translator for LaTeX.
-  <a title="" href="http://tug.org/applications/tex4ht/mn.html" rel="nofollow">TeX4ht</a> - The best HTML translator for LaTeX that I know of. The HTML version of my <a href="http://www.chkwon.net/pmwiki/Main/CV">CV</a> is created by the htlatex command of TeX4ht.

<h2>Graphics</h2>

-  <a href="https://cschleiden.wordpress.com/2009/09/28/howto-export-excel-charts-as-pdf-to-include-in-latex-document/" target="_blank">Export Excel Charts as PDF</a>
- [Ipe](http://ipe.otfried.org): A drawing editor with LaTeX source code as input
- [Inkscape](http://inkscape.org) - This is an open source alternative to Adobe Illustrator. Inkscape can export drawings as LaTeX codes (save as PDF).
  - <a title="" href="http://pav.iki.fi/software/textext/#instructions-for-windows" rel="nofollow">textext</a> - An Inkscape extension to enter LaTeX equations in Inkscape
- [What GUI applications are there to assist in generating graphics for TeX?](http://tex.stackexchange.com/questions/26972/what-gui-applications-are-there-to-assist-in-generating-graphics-for-tex)
- [What graphics packages are there for creating graphics in LaTeX documents?](http://tex.stackexchange.com/questions/205/what-graphics-packages-are-there-for-creating-graphics-in-latex-documents)

## Topics
<h2>Citation and Bibliography</h2>

-  <a title="" href="http://merkel.zoneo.net/Latex/natbib.php" rel="nofollow">Natbib reference sheet</a>
-  <a title="" href="http://www.chkwon.net/pmwiki/uploads/Main/bibtex_guide_kim.pdf" rel="nofollow">A BibTeX Guide via Examples</a> - Ki-Joo Kim
-  <a title="" href="http://jo.irisson.free.fr/bstdatabase/index.php" rel="nofollow">LaTeX Bibliography Styles Database</a>
-  Which packages needed for a bibliogrpahy style? See the examples in <a title="" href="http://mirror.cac.psu.edu/pub/CTAN/biblio/bibtex/contrib/" rel="nofollow">this</a> and <a title="" href="http://www.math.utah.edu/pub/tex/bibtex/" rel="nofollow">this</a>.

<h2>Converting to HTML and DOCX</h2>
This may not be the best way, but it has worked pretty well to me. No conversion is perfect. If you find any better way, please let me know!!

-  Download this "<a href="https://gist.github.com/chkwon/ea344919c5d9aea6ee0b" target="_blank">myxhtml.cfg</a>" file, and save it in the same folder of your filename.tex file.
-  Run the following command:
<pre>htlatex filename.tex myxhtml</pre>

-  You will obtain filename.html.
-  Open filename.html in Windows(!) and copy all contents and paste in a blank Word document.
-  Save it as filename.docx.

The configuration file "myxhtml.cfg" does two things:

-  Convert all mathematical expressions to PNG graphical files.
-  Convert PDF graphics to PNG files. For this purpose, you should specify the file extension in your .tex file. For example
<pre>\includegraphic{graphicfile.pdf}</pre>
If your PDF graphic files are not converted, you should install <a href="http://www.imagemagick.org" target="_blank">ImageMagick</a> to your system..

If you receive error messages during conversion in Step 2, try to press the enter key several times to ignore errors. To make smoother conversion, try to minimize using packages and create tables as simple as possible. "Standard" packages such as amsmath works good enough.
<h2>Grammar Check</h2>
One missing functionality in LaTeX is a grammar checker, while Microsoft Word has the best grammar checker. To use MS Word's grammar checker, follow the above guideline for conversion. Then you can use MS Word's powerful grammar checker.


<h2>Beamer</h2>
Beamer is to generate presentation slides.

-  <a title="" href="http://mirrors.ctan.org/macros/latex/contrib/beamer/doc/beameruserguide.pdf" rel="nofollow">The Beamer class User Guide</a>
-  <a title="" href="http://www.math.umbc.edu/~rouben/beamer/" rel="nofollow">A Beamer Quick Guide</a>
-  <a title="" href="http://www.uncg.edu/cmp/reu/presentations/Charles%20Batts%20-%20Beamer%20Tutorial.pdf" rel="nofollow">A Beamer Tutorial in Beamer</a> -- Charles T. Batts
-  <a title="" href="http://www.chkwon.net/pmwiki/uploads/Main/beamer_guide_kim.pdf" rel="nofollow">Beamer v3.0 Guide</a> - Ki-Joo Kim
-  <a title="" href="http://faq.ktug.or.kr/wiki/uploads/MathFonts.pdf" rel="nofollow">Math Fonts in Beamer</a>
-  <a title="" href="http://deic.uab.es/~iblanes/beamer_gallery/index.html" rel="nofollow">Beamer theme gallery</a>

<h2>Fonts</h2>

-  <a title="" href="http://www.tug.dk/FontCatalogue/" rel="nofollow">The LaTeX Font Catalogue</a>
-  <a title="" href="http://ctan.tug.org/tex-archive/info/Free_Math_Font_Survey/survey.html" rel="nofollow">A Survey of Free Math Fonts for TeX and LaTeX</a>
-  <a title="" href="http://data12.da.funpic.de/LaTeX/Schriften/miktex_fonts.pdf" rel="nofollow">MiKTEX 2.3 Font Test</a>
-  <a title="" href="http://tex.loria.fr/general/new/fntguide.html" rel="nofollow">LaTeX2e font selection</a>
-  Arial

<div id="sourceblock2">
<pre>usepackage[T1]{fontenc}
usepackage[scaled]{uarial}
renewcommand*familydefault{sfdefault}</pre>

-  Times Roman

<div id="sourceblock3">
<pre>usepackage{mathptmx}</pre>

-  Palatino

<div id="sourceblock4">
<pre>usepackage{mathpazo}</pre>

-  Helvetica

<div id="sourceblock5">
<pre>usepackage[T1]{fontenc}
usepackage[scaled]{helvet}
renewcommand*familydefault{sfdefault}</pre>
<h2>TeXLive + ko.tex</h2>
<a title="" href="http://project.ktug.or.kr/ko.TeX/" rel="nofollow">ko.TeX</a> is a Korean typesetting package. For TeXLive distributions, it is very simple to install. The year '2012' should be same as your TeXLive distribution version.

-  This is for Windows distribution. Run the following in a command window.

<div id="sourceblock6">

:: To add ko.tex to your TeXLive installation:
<pre>tlmgr --location=http://ftp.ktug.or.kr/KTUG/texlive/2012 install collection-kotex</pre>
:: To update the TeX tree:
<pre>mktexlsr</pre>

-  This is for Mac distribution. Run the following in a terminal

<div id="sourceblock7">

:: To add ko.tex to your TeXLive installation:
<pre>sudo tlmgr --repository=http://ftp.ktug.or.kr/KTUG/texlive/2012 install collection-kotex</pre>
:: To update the TeX tree:
<pre>mktexlsr</pre>
<h2>Installing a Spell Checker for TeXworks</h2>

-  Go <a title="" href="http://wiki.services.openoffice.org/wiki/Dictionaries" rel="nofollow">here</a> and obtain appropriate dictionary files. For example, <a title="" href="http://ftp.services.openoffice.org/pub/OpenOffice.org/contrib/dictionaries/en_US.zip" rel="nofollow">US English</a>.
-  Follow <a title="" href="http://code.google.com/p/texworks/wiki/SpellingDictionaries" rel="nofollow">this direction</a> to install the obtained dictionary files.

-  For Windows 7 place .dic and .aff files in the following directory:



<div id="sourceblock10">

:: TeXLive
<pre>C:Users&lt;user name&gt;.texlive2011texmf-configtexworksdictionaries</pre>
:: MikTeX
<pre>C:Users&lt;user name&gt;AppDataLocalMiKTeX&lt;MiKTeX version&gt;TeXworks&lt;TeXworks version&gt;dictionaries</pre>
Then, restart TeXworks and select the installed dictionary in Edit &gt; Spelling menu.
<h2>CV Templates</h2>

-  <a title="" href="http://nitens.org/taraborelli/cvtex" rel="nofollow">Dario Taraborelli's template</a> - A very good template. My <a href="http://www.chkwon.net/pmwiki/Main/CV">CV</a> is based on this template with some modifications.
-  <a title="" href="http://www.cv-templates.info/" rel="nofollow">The CV Inn</a>
-  <a title="" href="http://tex.stackexchange.com/questions/80/latex-template-for-resume-curriculum-vitae" rel="nofollow">LaTeX template for resume/curriculum vitae</a> - a stackexchange entry

<h2></h2>
