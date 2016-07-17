# Git Definitions - Answers

**Instructions:** Define each of the following Git concepts.

* What is version control?  Why is it useful?

Version control is a system that records changes to a file or set of files over time so that you can recall specific versions later should you need to. It's useful because it allows developers to view the entire history of revisions to one or more files and merge revisions made by different people. Using version control is a great way to keep our code safe, meaning that if we make any mistakes or lose files we can easily recover simply by reverting to a previous version of a file (or the entire project). 

To summarize version control allows us to revert files back to a previous state, revert the entire project back to a previous state, compare changes over time, see who last modified something (that may or may not be causing a problem), when an issue was introduced and by whom etc. 

* What is a branch and why would you use one?

At its core, a branch represents an independent line of development. They can be viewed as a way to request a brand new working directory, staging area and project history that will be used to make a unique series of changes. New changes/edits and commits are recorded in the history of the current branch, which results in a fork in the history of the project.

Branching is an important part of the everyday development process. For example, when we want to add a new feature or fix a bug, irrespective of how big or small these are it’s considered good practice to create a new branch for each action to encapsulate those changes. Doing this preserves the working condition or the clean condition of the code base by ensuring that unstable code is never introduced to it. Branching additionally allows developers to discard a feature or experiment that didn't turn out quite as expected and it also gives them the chance to clean up their feature’s history before merging it into the main branch.

Using branches makes it possible to work on multiple features simultaneously and in parallel and it ensures that the main master branch is free from potentially unstable or questionable code.


* What is a commit? What makes a good commit message?

A commit is way to to 'lock' down a change introduced while working on a task. It creates a 'record' in the version control system which we can point to, and contains information such as the Author's name and email, a Timestamp, a unique ID/Hash and a Commit message.

Good commit messages should have a meaningful description of the work/task carried out.


* What is a merge conflict?

When a file has changes that git cannot automatically handle when merging, a merge conflict is created.

For instance, when a file is modified on the same line by 2 different commits sometimes git cannot automatically merge that commit. If that's the case git indicates that it cannot proceed and that there is a merge conflict which we need to fix. 

In this scenario - the conflict consists of the same file in 2 branches with conflicting changes in the same location of the file. To resolve that conflict we need to view that file, see the differences between the 2 versions and decide which version of the changes we want to keep, deleting the other one entirely. We could also in fact decide to not keep any of those changes and just write something entirely different to solve the merge conflict.

Git indicates that there is a merge conflict on a certain line using the following format:

```
<<<<<<< HEAD
Hello Sophia
=======
Goodbye Sophia
>>>>>>> master
```

Git marks the conflicted area using `<<<<<<<` and `>>>>>>>`. These are called conflict markers and between those markers, git uses `=======`to divide the 2 conflicted blocks.

You can either keep your changes `HEAD` or the changes from `master` or just delete them all.

This can happen for example when we need to merge changes to our branch from the master and the master branch has changed.