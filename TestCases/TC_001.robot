*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Resources1.robot
Test Setup  Open Browser and Maximize  #Able to setup precondition
Test Teardown  Close Browser Window  #Able to setup postcondition

*** Variables ***
${Browser}  Chrome
${Url}  http://www.thetestingworld.com/testings

*** Test Cases ***
#TC_001 - Robot First Test case
#    [Documentation]  To call external Keyword with input arguments / return value
#    [Timeout]  2min 1s
#    ${Res}  Start Browser and Maximize  ${Url}  ${Browser}
#    Log  ${Res}
#    Input Text  name:fld_username   ${Res}


#TC_002 - Robot Second Test case
#    [Documentation]  This testcase use precondition / postcondition module
#    Input Text  name:fld_username  Testing
#    Input Text  name:fld_email  testingworldindia@gmail.com
#    Input Text  name:fld_password  123456


TC_002_ALT - Robot Second Test case (Reading element locators from external JSON file)
        [Tags]  Smoke
        ${username}  Read Element Locator  Registration.username_textbox_name
        ${email}  Read Element Locator  Registration.email_textbox_name
        ${password}  Read Element Locator  Registration.password_textbox_name
        Input Text  name:${username}  Testing
        Input Text  name:${email}  testingworldindia@gmail.com
        Input Text  name:${password}  123456

#TC_003 - Select Radio
#    Select Radio Button  add_type  office