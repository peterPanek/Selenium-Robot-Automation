*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Resources1.robot

*** Variables ***
${Browser}  Chrome
${Url}  http://www.thetestingworld.com/testings

*** Test Cases ***
#TC_001 - Robot Fetch Data (Feetch Title, selenium speed, value, inner text of an HTML element
#    Open Browser  ${Url}  ${Browser}
#    Maximize Browser Window
#    ${PageTitle}  Get Title
#    Log  ${PageTitle}
#    ${Speed}  Get Selenium Speed
#    Log  ${Speed}
#    ${Value}  Get Value  xpath://input[@value='Sign up']
#    Log  ${Value}
#    ${Text}  Get Text  xpath://a[@class='displayPopup']

#TC_002 - Robot Fetch Data (Fetch Data from a list)
#    Open Browser  ${Url}  ${Browser}
#    Maximize Browser Window
#    Select From List By Index  name:sex  1
#    ${Val}  Get Selected List Value  name:sex
#    Log  ${Val}
#    ${Text}  Get Selected List Label  name:sex
#    Log  ${Text}

#TC_003 - Robot Fetch Data (Fetch location, HTML sourcecode, HTML element attribute value)
#    Open Browser  ${Url}  ${Browser}
#    Maximize Browser Window
#    ${ActualURL}  Get Location
#    Log  ${ActualURL}
#    ${PageHTML}  Get Source
#    Log  ${PageHTML}
#    ${Attr}  Get Element Attribute  name:fld_username  class
#    Log  ${Attr}
#    ${cnt}  Get Element Count  class:field
#    Log  ${cnt}

TC_004 - Calling python method in backend
#    Create Folder at Runtime  Hello22345  Testing
    Concatenate Username and Password  Testing  World

