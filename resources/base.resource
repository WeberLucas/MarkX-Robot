*** Settings ***

Documentation    Tudo deve começar aqui nesse arquivo

Library    AppiumLibrary

*** Keywords ***
Start session
    
    Open Application    http://localhost:4723
    ...                 platformName=Android
    ...                 deviceName=Emulator
    ...                 automationName=UIAutomator2
    ...                 app=${EXECDIR}/apps/markx.apk
    ...                 udid=emulator-5554
    ...                 autoGrantPermissions=true

    Wait Until Page Contains    Endereço IP da Api    10

Finish session
    Capture Page Screenshot
    Close Application 