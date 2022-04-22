*** Settings ***
Library     Browser
Library     BuiltIn
Library     OperatingSystem
Library     String
Library     Screenshot
Library     DateTime
Library     Collections
Library     RequestsLibrary
Library     RPA.Archive
Resource    BrowserParameters.robot
Resource    BrowserResources.robot

#*** Store all repetitive keywords here ***


*** Keywords ***

#*** Setup and Teardown ***
Test Setup
#Takes an arguement when keyword is called to determine which browser to use.


Test Teardown
#

#*** Main Keywords ***

Start New Browser
    New Browser     ${Browser}   headless=${Headless}

Open New Page To Server
    New Context     &{Browser-Default-Capabilities}
#    Maximize Browser Window
    Set Browser Timeout        ${Default-Timeout}
    New Page        ${Webpage}

