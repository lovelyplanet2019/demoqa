*** Settings ***
Library  Browser
Resource            ../Resources/BrowserFunctions.robot
Suite Setup         Start New Browser
#Test Setup          Test Setup
#Test Teardown       Test Teardown
Suite Teardown      Close Browser

*** Test Cases ***
001-Get-Element-RandomID
#1. get the element with the text 'This text has random Id' and retrieve the id
   Open New Page To Server
   wait for elements state    ${Button-RandomID} 
   ${RandomID}=   Get Attribute    ${Button-RandomID}    id
   log to console  The id is ${RandomID}

002-button-Will enable 5 seconds
#2. check if the button "Will enable 5 seconds" is enabled after 5 seconds
   Open New Page To Server
#Validate initial value has "disabled"
   ${EnableButtonInit}=   Get Attribute Names     ${Button-Enabled-5s}  contains   disabled
   log to console  The initial class is ${EnableButtonInit}


003-button-Color Change
#3. check if the button "Color Change" is red after 5 seconds
   Open New Page To Server
   #Validate initial value is "mt-4 btn btn-primary"
   wait for elements state    ${Button-Color-Change}
   ${ColorChangeInitClass}=   Get Attribute    ${Button-Color-Change}   class   ==    mt-4 btn btn-primary
   log to console  The initial class is ${ColorChangeInitClass}
   sleep  5s
   #Validate after 5 seconds value is "mt-4 text-danger btn btn-primary"
   ${ColorChangeAftClass}=   Get Attribute    ${Button-Color-Change}   class   ==    mt-4 text-danger btn btn-primary
   log to console  The class after 5s is ${ColorChangeAftClass}

004-button-Visible After 5 Seconds
#4. check if the button "Visible After 5 Seconds" is on the page after 5 seconds
   Open New Page To Server
   #Validate initial button is hidden
   Get Element States  ${Button-Visible-5s}     contains   detached
   sleep  5s
   #Validate after 5 seconds button is visible
   Get Element States   ${Button-Visible-5s}
