*** Settings ***

Documentation    Testes de login

Resource    ../resources/base.resource

Test Setup       Start session
Test Teardown    Finish session

*** Test Cases ***
Deve logar com sucesso

    Input Text          xpath=//*[@resource-id="apiIp"]    192.168.1.7

    Click Element       xpath=//*[@resource-id="signInButton"] 


    Wait Until Page Contains        Minhas tarefas    5
    Sleep     10

