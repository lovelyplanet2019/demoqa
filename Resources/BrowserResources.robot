*** Settings ***
Resource    BrowserFunctions.robot

#*** Store all variables / web elements css/xpath here ***

*** Variables ***
#*** Menus
${Button-RandomID}         //p[contains(.,'This text has random Id')]
${Button-Enabled-5s}       //button[@id='enableAfter']
${Button-Color-Change}     //button[@type='button'][contains(.,'Color Change')]
${Button-Visible-5s}       //button[@id='visibleAfter']