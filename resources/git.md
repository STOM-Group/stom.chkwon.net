---
layout: page
title: git
permalink: /git/
subtitle:
---

This document is not for everyone. This is prepared for those who are not familiar with git, but need to use git to work with Dr. Kwon. Of course there will be some learning curve, but you will like it.

Dr. Kwon uses <a href="http://bitbucket.org" target="_blank">Bitbucket</a> for <em>private</em> things such as writing research papers, and <a href="http://github.com" target="_blank">GitHub</a> for <em>public</em> things such as developing open-source software.

GitHub is easier to use than Bitbucket. If you just need to play by yourself, go ahead with GitHub. Academic users can request a free plan at <a href="https://education.github.com/discount_requests/new" target="_blank">GitHub Education</a>.
<h1>What is Git?</h1>
Git is a version control system. Watch <a href="http://git-scm.com/videos" target="_blank">these videos</a>.
<h1>Installation</h1>
<ol>
	<li>Please make an account using your [cci].edu[/cci] email address at <a href="https://bitbucket.org" target="_blank">BitBucket</a>.
(Using .edu email address, academic users can create unlimited private repositories…)</li>
	<li>Install <a href="https://confluence.atlassian.com/display/BITBUCKET/Set+up+Git" target="_blank">git</a></li>
	<li>Install a git client, <a href="http://www.sourcetreeapp.com" target="_blank">SourceTree</a></li>
	<li>Install a [cci]diff[/cci]/[cci]merge[/cci] program:
<ul>
	<li>Windows: <a href="http://www.sourcegear.com/diffmerge/" target="_blank">DiffMerge</a></li>
	<li>Mac OS X: <a href="http://www.sourcegear.com/diffmerge/" target="_blank">DiffMerge</a> or FileMerge (part of <a href="https://developer.apple.com/xcode/" target="_blank">Xcode</a>)</li>
</ul>
</li>
	<li>Contact Dr. Kwon to schedule an in-person meeting and learn how to use it.</li>
</ol>
<h1>Readings and Tutorials</h1>
<ul>
	<li><a href="https://rogerdudler.github.io/git-guide/index.html" target="_blank">git - the simple guide</a></li>
	<li><a href="https://www.atlassian.com/git/?atl_medium=AC&amp;atl_source=STPBB&amp;atl_camp=default_sub1" target="_blank">Getting Git Right</a></li>
	<li><a href="https://confluence.atlassian.com/display/BITBUCKET/Bitbucket+101;jsessionid=64E39ABE2046636E1312BFE274C3A56F.node1" target="_blank">Bitbucket 101</a></li>
	<li><a href="http://www.git-scm.com/doc" target="_blank">git documentation</a></li>
</ul>
<h1>Resolving Conflicts</h1>
<ol>
	<li>Commit your changes. Push will be rejected if your commit has some conflicts with the remote files.</li>
	<li><em>Pull</em> the remote to your local. It will identify conflicts.</li>
	<li>Resolve the conflicts <em>manually</em>. Open the conflicting file from your local folder. There will be something like '&lt;&lt;&lt;&lt;&lt;&lt;&lt; HEAD'. Edit those parts as you like. (Do NOT use automatic merge tools such as 'Resolve using Mine' and Resolve using Theirs'. I think it is too dangerous. Do it manually.)</li>
	<li><em>Commit</em> your resolved clean changes.</li>
	<li><em>Push</em> them.</li>
	<li>Check if everything is okay and delete [cci].orig[/cci] files, if any, in your local folder. (Don't commit/push [cci].orig[/cci] files.)</li>
</ol>
&nbsp;
