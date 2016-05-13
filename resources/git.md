---
layout: page
title: git
permalink: /git/
subtitle:
---

This document is not for everyone. This is prepared for those who are not familiar with git, but need to use git to work with Dr. Kwon. Of course there will be some learning curve, but you will like it.

STOM Group uses [GitHub](https://github.com) for writing research papers together and developing software. Visit [the STOM-Group account page](https://github.com/STOM-Group).

## What is Git?
Git is a version control system. Watch [these videos](http://git-scm.com/videos).

## Instructions to STOM Group members
1. Create an account using your `.edu` email address and request an education pack at [GitHub Education](https://education.github.com/).
2. Install [GitHub Desktop](https://desktop.github.com).
3. Email Dr. Kwon your GitHub account name. He'll add you to the GitHub group.

You're now ready. Learn how to do the following tasks.

1. [Clone](https://help.github.com/desktop/guides/contributing/cloning-a-repository-from-github-desktop/) this [SandBox](https://github.com/STOM-Group/SandBox) repository to your local desktop.
2. [Create a new branch](https://help.github.com/desktop/guides/contributing/creating-a-branch-for-your-work/).
3. Make some changes in your local desktop.
4. [Commit the changes and sync](https://help.github.com/desktop/guides/contributing/committing-and-reviewing-changes-to-your-project/)
5. [Create a pull request to merge](https://help.github.com/desktop/guides/contributing/sending-a-pull-request/).


## Some Rules

* For LaTeX documents, try to use a single line for each sentence.

*DO:*
```latex
Assuming that data are uncertain within given sets, this paper considers a worst-case CVaR (WCVaR) minimization problem for hazmat routing.
While CVaR has the potential to be an important risk measure and decision-making tool in the context of hazmat transportation of a low-probability-high-consequence nature, there is a critical issue that must be addressed in any hazmat routing method---\emph{data uncertainty}.
While the consequences of hazmat accidents usually cause serious problems, hazmat-accident data are usually insufficient for constructing probability distributions.
The accident probability of hazmat trucks in each road segment is difficult to estimate and consequences from such accidents are dependent on various and uncertain factors such as the severity of the accident, local population density and weather conditions at the time of the accident, the type of hazmat shipment, and the quantity of hazmat released \citep{Kwon2013rsp}.
These factors make any hazmat routing method based on the stochasticity of data less meaningful.
```
*DO NOT:*
```latex
Assuming that data are uncertain within given sets, this paper considers a worst-case CVaR (WCVaR) minimization problem for hazmat routing. While CVaR has the potential to be an important risk measure and decision-making tool in the context of hazmat transportation of a low-probability-high-consequence nature, there is a critical issue that must be addressed in any hazmat routing method---\emph{data uncertainty}. While the consequences of hazmat accidents usually cause serious problems, hazmat-accident data are usually insufficient for constructing probability distributions. The accident probability of hazmat trucks in each road segment is difficult to estimate and consequences from such accidents are dependent on various and uncertain factors such as the severity of the accident, local population density and weather conditions at the time of the accident, the type of hazmat shipment, and the quantity of hazmat released \citep{Kwon2013rsp}. These factors make any hazmat routing method based on the stochasticity of data less meaningful.
```

* When you are making a very minor changes, commit and sync with the `master` branch. If you are making some middle to big changes or new additions, always create a new branch and work there, without touching the `master` branch.

* [More information on git + LaTeX workflow](http://stackoverflow.com/questions/6188780/git-latex-workflow).


## Readings and Tutorials
- [git - the simple guide](https://rogerdudler.github.io/git-guide/index.html)
- [Getting Git Right](https://www.atlassian.com/git/?atl_medium=AC&amp;atl_source=STPBB&amp;atl_camp=default_sub1)
- [Bitbucket 101](https://confluence.atlassian.com/display/BITBUCKET/Bitbucket+101;jsessionid=64E39ABE2046636E1312BFE274C3A56F.node1)
- [git documentation](http://www.git-scm.com/doc)


## Resolving Conflicts (for GitHub)
When you sync your changes to the main repository on the web, it may create conflicts. Saying, Dr. Kwon has made some changes, while you are making changes, and there are conflicts. In such cases, do the following:

1. In GitHub Desktop, select your working branch and press the button for `Update from master`.  
2. In your local folder, open the file with conflicts with a text editor.
3. here will be something like  `<<<<<<< HEAD`. Edit those parts as you like to be.
4. Return to GitHub Desktop, and commit the changes again, and sync and/or create a pull request.


## Resolving Conflicts (for Bitbucket)
1. Commit your changes. Push will be rejected if your commit has some conflicts with the remote files.
2. <em>Pull</em> the remote to your local. It will identify conflicts.
3. Resolve the conflicts <em>manually</em>. Open the conflicting file from your local folder. There will be something like  `<<<<<<< HEAD`. Edit those parts as you like. (Do NOT use automatic merge tools such as 'Resolve using Mine' and Resolve using Theirs'. I think it is too dangerous. Do it manually.)
4. <em>Commit</em> your resolved clean changes.
5. <em>Push</em> them.
6. Check if everything is okay and delete `.orig` files, if any, in your local folder. (Don't commit/push `.orig` files.)
