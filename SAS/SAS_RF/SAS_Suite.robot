*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
TC001_LoginPage
    open browser    http://192.168.4.94:8081/sas-portal-test/login    chrome
    maximize browser window
    input text    name=username    admin
    input text    name=password    admin
    select checkbox    id=RememberMe
    sleep    3s
    Click Button    xpath=//button[contains(text(),'Login')]
    sleep    3s
    Capture Page Screenshot    D:/Study Purpose/Robot Framework/element.png
    Close All Browsers
