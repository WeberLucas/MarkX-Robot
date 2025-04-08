*** Settings ***
Documentation    Elementos e açoes da tela de login
Library    AppiumLibrary

*** Variables ***

${API_IP}    192.168.1.8

*** Keywords ***
Do login

    Input Text          xpath=//*[@resource-id="apiIp"]    ${API_IP}

    Click Element       xpath=//*[@resource-id="signInButton"] 