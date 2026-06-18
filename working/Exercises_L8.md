# Lecture 8 - Exercises

The complete implementation of the exercises Q1 and Q2 is available in the following GitHub repository:

https://github.com/GMeroni01/gaussiansmooth


## Repository organization

```text
C:.
│  example.py
│  README.md
│  setup.py
│
├───.github
│   └───workflows
│           tests.yml
│
|
├───gaussiansmooth
│       smooth.py
│       __init__.py
|
|
└───tests
        test_smoothing.py
```


## Q1 - I love pip

The Gaussian smoothing code (from exercise 7 - lecture 4) has been converted into an installable python package.

The package implements:
- generation of a noisy dataset
- gaussian smoothing through convolution

The original script has been reorganized into a python module.
The main functions are contained in gaussiansmooth/smooth.py and the package interface is defined in gaussiansmooth/init.py. The package installation was configured through setup.py.

The package was:
- installed locally using pip
- tested through the example script example.py
- built and uploaded to TestPyPI

The published package is available on TestPyPI:

https://test.pypi.org/project/gaussiansmooth-giorgiom/0.0.6/


## Q2 - My own test

A unit test has been implemented for the Gaussian smoothing code used in Q1.

The tested code is the function "gaussian_smooth()" located in: gaussiansmooth/smooth.py.

The unit test is implemented using pytest and is located in: tests/test_smoothing.py.
The test verifies the correct behaviour of the smoothing function and continuous integration is implemented through GitHub Actions.

The workflow file is located at: .github/workflows/tests.yml.
The workflow automatically runs the test at every commit, with options edited to make sure the code cannot be committed if the tests fail.

The effectiveness of the control was verified by intentionally introducing a failing test and then fixing it. The Actions history shows the failed workflow and the subsequent successful run corresponding to the commits:
- "Test failure check" --> failed test
- "Fix failing check" --> tests passed again
