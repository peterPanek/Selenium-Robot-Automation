*** Settings ***
Resource  ../Resources/Resources1.robot

*** Variables ***

*** Test Cases ***
Test Case in BDD Format
    Given Open Browser and Maximize
    When Create Folder at Runtime  ABCD22  XYZYM2
    Then Concatenate Username and Password  Testing  World
