*** Settings ***
Documentation  Basic information here about the test suite
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
User must sign in to check out
    [Documentation]  Information about the test case
    [Tags]  Smoke
    Open browser  http://www.amazon.co.uk  opera
    Close Browser
*** Keywords ***






