# Lecture 6 – Exercises

The complete implementation of the exercises Q1, Q2, Q3 and Q5 is available in the following GitHub repository:

https://github.com/GMeroni01/project-1st.git

Note: The repository is private. Please accept the GitHub invitation to access the repository.

## Repository organization

```text
C:.
│   .gitignore
│   README.md
│   Scattreing Correction simulation.py
│
├───.github
│   └───workflows
│           check-readme.yml
│
└───Abstract FOM 2026
        diff.pdf
        diff.tex
        main.tex
```

## Q1 – Your Next Research Project

A Git repository was created for my current research project and initialized locally using Git. The repository was connected to a remote GitHub repository and synchronized through commits and pushes. 

The project is therefore under version control both locally and remotely.

## Q2 – Egocentric

A GitHub Action has been implemented in .github/workflows/check-readme.yml.

The workflow automatically checks that the file README.md contains the author's name. If the name is missing, the workflow fails and reports an error on GitHub Actions.

The functionality was tested by temporarily removing the name from the README and verifying that the workflow failed correctly. The Actions history shows the failed workflow and the subsequent successful run corresponding to the commits:

- "Remove author name from README" --> failed test
- "Re-insert author name in README" --> test passed again 

## Q3 – Ditch Overleaf

A scientific abstract has been written in LaTeX using TeXstudio and managed through Git and GitHub.

The project source file is: Abstract FOM 2026/main.tex.

## Q5 – Latexdiff

The main.tex file was committed, modified, committed again, and pushed to the remote GitHub repository.

Two versions of the document were extracted from the Git history and compared using: latexdiff old.tex new.tex > diff.tex.

The generated comparison files Abstract FOM 2026/diff.tex (uploaded also as pdf for viewing purposes) highlights the differences between the two versions of the abstract.
