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