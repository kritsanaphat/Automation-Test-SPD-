*** Settings ***
Test Teardown   Close Browser
Library    Selenium2Library




*** Variables ***
${url_signin}    https://test-robot-framework-g1-07.netlify.app/
${textbox_username}      //*[@id="username"]
${textbox_password}      //*[@id="password"]
${button_signin}      //*[@class="buttsubmit"]
${alert_box_error}    //*[@class="error-message"]


*** Keywords ***


*** Test Cases ***
T0001 Sign-in valid with username and password
    [Tags]    failed-case
    Open Browser    ${url_signin}    chrome
    Title Should Be    Test Robot   
    Click Element    ${button_signin}
    Element Should Contain    ${alert_box_error}    Please enter username and password!

T0002 Sign-in valid with username and password
    [Tags]    failed-case
    Open Browser    ${url_signin}    chrome
    Title Should Be    Test Robot   
    Input Text    ${textbox_username}  cekmitl  
    Click Element    ${button_signin}
    Element Should Contain    ${alert_box_error}    Please enter your password!

T0003 Sign-in valid with username and password
    [Tags]    failed-case
    Open Browser    ${url_signin}    chrome
    Title Should Be    Test Robot   
    Input Text    ${textbox_username}   cekmitl_x    
    Click Element    ${button_signin}
    Element Should Contain    ${alert_box_error}    Please enter your password!
    
T0004 Sign-in valid with username and password
    [Tags]    failed-case
    Open Browser    ${url_signin}    chrome
    Title Should Be    Test Robot
    Input Text    ${textbox_password}   ecc56789     
    Click Element    ${button_signin}
    Element Should Contain    ${alert_box_error}    Please enter your username!

T0005 Sign-in valid with username and password
    [Tags]    failed-case
    Open Browser    ${url_signin}    chrome
    Title Should Be    Test Robot
    Input Text    ${textbox_password}   ecc56789_x      
    Click Element    ${button_signin}
    Element Should Contain    ${alert_box_error}    Please enter your username!

T0006 Sign-in valid with username and password
    [Tags]    failed-case
    Open Browser    ${url_signin}    chrome
    Title Should Be    Test Robot
    Input Text    ${textbox_username}  cekmitl
    Input Text    ${textbox_password}   ecc56789_x
    Click Element    ${button_signin}
    Element Should Contain    ${alert_box_error}  Please enter valid username and password!

T0007 Sign-in valid with username and password
    [Tags]    failed-case
    Open Browser    ${url_signin}    chrome
    Title Should Be    Test Robot
    Input Text    ${textbox_username}  cekmitl_x
    Input Text    ${textbox_password}   ecc56789
    Click Element    ${button_signin}
    Element Should Contain    ${alert_box_error}  Please enter valid username and password!
