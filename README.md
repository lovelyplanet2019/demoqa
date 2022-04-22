# Robot Framework Automation Test

 **This repository consists of robotframework automation scripts for demoqawebsite.**

The Robot Framework is a generic test automation framework for acceptance testing and acceptance test-driven development (ATDD). 
It is a keyword-driven testing framework that uses tabular test data syntax. The Robot Framework is written in Python.

We will use it to design the test automation framework.

**All relevant test scripts and resources files are located at /BrowserTests and /Resources folders.**

**/Resources folders**
- _BrowserResources.robot_ : all web elements (css/xpath)
- _BrowserParameters.robot_ : configurable variables / test data , e.g. hostname/IP/username/password
- _BrowserFunctions.robot_ : custom keywords which form a set of repetitive actions/steps to be called in the main test cases.

**Read below guide to setup test environment at Ubuntu laptop, and steps to run tests.**

## Test Environment Setup
#### Pre-requisite: demoqa Website
demoqa Website is up and running. (https://demoqa.com/dynamic-properties)

To run robot scripts at your local machine, perform below steps:
#### Step 1: Install node js and npm
NPM is an open-source test automation tool.

We will use npm often to install package at command line, so install nodejs which npm is bundled with it together.

https://nodejs.org/en/download/

#### Step 2: Install Python
https://www.digitalocean.com/community/tutorials/how-to-install-python-3-and-set-up-a-programming-environment-on-an-ubuntu-20-04-server

#### Step 3: Install Pycharm
This is the IDE which we will use to design and execute test cases.
https://www.jetbrains.com/help/pycharm/installation-guide.html#toolbox

https://www.jetbrains.com/help/pycharm/pipenv.html

(Install jar from Pycharm - File - Settings - Plugin - Settings - install plugin from disk - add jar file - restart)
https://github.com/lte2000/intellibot/blob/master/intellibot.jar 


#### Step 4: Clone Project Repo
Clone this project to your local machine.

#### Step 5: Install Robot Framework and libraries
Once project repo is cloned, run Pycharm and open this project.


At Pycharm terminal:
```
Pip install robotframework
```
Robot Framework is successfully installed. You can check it using the version command.
```
robot –-version
```

For the website UI testing, Browser Library is used. install it:

```
pip install robotframework-browser
```

Install the node dependencies: 
```
rfbrowser init
```
if rfbrowser is not found, try 
```
python -m Browser.entry init
```


***
reference:
https://marketsquare.github.io/robotframework-browser/Browser.html

https://github.com/MarketSquare/robotframework-browser


## **Test Case Execution**

1. At Pycharm - Terminal (located at bottom of IDE) 

Navigate to path \BrowserTests
Run:
```
robot test1.robot
```

To run a subset case (example, 001-corpus-sorting-corpus-name in 005-Corpus-Sorting.robot) within a test case:
Run:
```
robot -t "001*"    test1.robot
```

## **Test Report**

Navigate to report.html > Open in Browser


