*** Settings ***
Library  SeleniumLibrary
Default Tags    BrowserTest

*** Keywords ***
LoginAction
    [Documentation]    Enter user login name and password and click submit
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Log    Submitting for authentication    
    Click Button    id=btnLogin


    
*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/
${Browser}    Firefox

 *** Test Cases ***
First Test Case
    [Tags]    Smoke
    Log    Starting test case    
OpenBrowser
    [Tags]    Smoke
    Log    Navigating to Google
    Open Browser    https://www.google.com    ${Browser}

InputInformation
    [Tags]    Acceptance
    Set Browser Implicit Wait    5
    Input Text    name=q    Something Silly    clear=True
    Capture Page Screenshot    filename=C:\\Automation\\Robot_Framework\\Screengrabs\\Screengrab.png
    Press Keys    name=q    ENTER
    # Click Button    name=btnK        
    Capture Page Screenshot    filename=C:\\Automation\\Robot_Framework\\Screengrabs\\Screengrab2.png
CloseBrowser
    [Tags]    Smoke
    Log    Closing Browser
    Log    Get Browser Ids
    Close Browser
    
SampleLoginTest
    [Tags]    Acceptance
    [Documentation]    A sample log in test, executed by %{username}
    Log    Opening Browser
    Open Browser    ${URL}    ${Browser}
    Log    Entering credentials
    LoginAction
    Title Should Be    OrangeHRM
    Log    Logging Out         
    Click Link    id=welcome
    Wait Until Element Is Visible    link=Logout 
    Click Element    link=Logout
    Close Browser           
   
    