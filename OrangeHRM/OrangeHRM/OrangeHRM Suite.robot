*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${x}              Charlie Carter

*** Test Cases ***
Login_Search
    open browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    chrome
    sleep    3s
    maximize browser window
    sleep    3s
    input text    name=username    Admin
    input text    xpath=//body/div[@id='app']/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/form[1]/div[2]/div[1]/div[2]/input[1]    admin123
    sleep    2s
    click button    xpath=//body/div[@id='app']/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/form[1]/div[3]/button[1]
    sleep    2s
    click element    xpath=//body/div[@id='app']/div[1]/div[1]/aside[1]/nav[1]/div[2]/ul[1]/li[9]/a[1]/span[1]
    sleep    2s
    input text    xpath=//body/div[@id='app']/div[1]/div[2]/div[2]/div[1]/div[1]/div[2]/form[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/input[1]    Ch
    sleep    5s
    click element    xpath=//*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]//*[contains(text(), "Charlie")]
    sleep    2s
    click element    xpath=//body/div[@id='app']/div[1]/div[2]/div[2]/div[1]/div[1]/div[2]/form[1]/div[1]/div[1]/div[3]/div[1]/div[2]/div[1]/div[1]/div[1]
    sleep    2s
    click element    xpath=//*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]//*[contains(text(), "New York Sales")]
    sleep    2s
    click button    xpath=//body/div[@id='app']/div[1]/div[2]/div[2]/div[1]/div[1]/div[2]/form[1]/div[2]/button[2]
    sleep    2s
    ${y}    Get Text    xpath=//body/div[@id='app']/div[1]/div[2]/div[2]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/p[1]
    #Element Text Should Be    //*[@id="app"]/div[1]/div[2]/div[2]/div/div[2]/div/div[2]/div/div/div/p[1]    ${x}
    Should Be True    """${x}""".lower() == """${y}""".lower()

*** Keywords ***
