*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Resources1.robot

*** Variables ***
${Browser}  Chrome
${Url}  http://www.thetestingworld.com

*** Test Cases ***
TDD 1
    Open Browser  ${Url}  ${Browser}
    Maximize Browser Window
    Click element  xpath://a[text()='Login']
    ${row}  Read Number of Rows  Munka1

    FOR  ${i}  IN RANGE  1  ${row}+1
    ${username}  Read Excel Data of Cell  Munka1  ${i}  1
    ${password}  Read Excel Data of Cell  Munka1  ${i}  2
    input text  id:username  ${username}
    input text  id:password  ${password}
    click button  xpath://button[@type='submit']
    sleep  5 seconds
    END