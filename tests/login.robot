*** Settings ***

Documentation    Testes de login

Resource    ../resources/base.resource

*** Test Cases ***
Deve logar com sucesso
  Open Application    http://localhost:4723
    ...                 platformName=Android
    ...                 deviceName=Emulator
    ...                 automationName=UIAutomator2
    ...                 app=${EXECDIR}/apps/markx.apk
    ...                 udid=emulator-5554
    ...                 autoGrantPermissions=true

    Wait Until Page Contains    Endereço IP da Api    10
    Input Text          xpath=//*[@resource-id="apiIp"]    192.168.1.8

    Click Element       xpath=//*[@resource-id="signInButton"] 


    Wait Until Page Contains        Minhas tarefas    5
    Sleep     10

    Close Application 