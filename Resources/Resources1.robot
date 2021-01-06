*** Settings ***
Library  SeleniumLibrary
Library  ../ExternalKeywords/UserKeywords.py
Library  ../ExternalKeywords/Locators.py
Library  ../ExternalKeywords/ReadData.py

*** Keywords ***
Start Browser and Maximize
    [Documentation]  This keyword is for Start Browser and Maximize its Window
    [Arguments]  ${UserURL}  ${InputBrowser}
    Open Browser  ${UserURL}  ${InputBrowser}
    Maximize Browser Window
    ${Title}  Get Title
    [Return]  ${Title}


Open Browser and Maximize
    Open Browser  http://www.thetestingworld.com/testings  Chrome
    Maximize Browser Window

Close Browser Window
    ${Title}  Get Title
    Log  ${Title}
    Close Browser

Create Folder at Runtime
    [Arguments]  ${foldername}  ${subfoldername}
    create_folder  ${foldername}
    create_sub_folder  ${subfoldername}
    Log  "Task Done Successfully"

Concatenate Username and Password
    [Arguments]  ${username}  ${password}
    ${resultval}  concatenate_two_values  ${username}  ${password}
    Log  ${resultval}

Read Element Locator
    [Arguments]  ${JsonPath}
    ${result}  read_locator_from_json  ${JsonPath}
    [Return]  ${result}

Read Number of Rows
    [Arguments]  ${sheetname}
    ${maxr}  fetch_number_of_rows  ${sheetname}
    [Return]  ${maxr}

Read Excel Data of Cell
    [Arguments]  ${sheetname}  ${row}  ${cell}
    ${data}  fetch_cell_data  ${sheetname}  ${row}  ${cell}
    [Return]  ${data}