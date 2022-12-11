*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${url}            http://192.168.1.9:8080/caab/login
&{login}          user=ayesha    pass=123456    branch=0007
&{id_creation}    nameEn=Nasir    nameBn=নাসির    joinYr=2022    photoDir=C:/Users/tigerit/Pictures/nasir.JPG

*** Test Cases ***
Login-User

Employee ID Creation
    open browser    ${url}    chrome
    maximize browser window
    input text    name=username    ${login}[user]
    input text    name=password    ${login}[pass]
    select from list by value    name=branchCode    ${login}[branch]
    sleep    3s
    click button    id=submit
    sleep    3s
    click element    xpath = //a[contains(text(),'Human Resource')]
    sleep    1s
    click element    xpath = //a[contains(text(),'HR Admin')]
    sleep    1s
    click element    xpath = //body/div[@id='resizeContainer']/div[@id='resizeMenu']/div[@id='mCSB_1']/div[1]/div[1]/div[5]/div[2]/div[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/div[1]/h4[1]/a[1]
    sleep    1s
    click element    xpath = //a[contains(text(),'Employee ID Creation')]
    sleep    1s
    input text    name=employeeNameEnglish    ${id_creation}[nameEn]
    input text    name=employeeNameBangla    ${id_creation}[nameBn]
    select from list by value    name=joinYear    ${id_creation}[joinYr]
    choose file    id=search    ${id_creation}[photoDir]
    click button    id=btnSave

Allowance & Deduction
    open browser    ${url}    chrome
    maximize browser window
    input text    name=username    ${login}[user]
    input text    name=password    ${login}[pass]
    select from list by value    name=branchCode    0007
    sleep    3s
    click button    id=submit
    sleep    3s
    click element    xpath=//a[contains(text(),'Human Resource')]
    sleep    1s
    click element    xpath=//a[contains(text(),'HR Payroll')]
    sleep    1s
    click element    xpath=//body/div[@id='resizeContainer']/div[@id='resizeMenu']/div[@id='mCSB_1']/div[1]/div[1]/div[5]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/h4[1]/a[1]
    sleep    1s
    click element    xpath=//body/div[@id='resizeContainer']/div[@id='resizeMenu']/div[@id='mCSB_1']/div[1]/div[1]/div[5]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/ul[1]/li[4]/a[1]
