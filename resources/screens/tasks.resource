*** Settings ***
Documentation    Elmentos e ações da tela minhas tarefas


Library    AppiumLibrary

*** Variables ***

${new_task_input}         xpath=//*[contains(@text, "nova tarefa")]
${create_button}          xpath=//*[@resource-id="createTask"]

*** Keywords ***
Create a new createTask    

    [Arguments]        ${task_Name}
    
    
        Wait Until Element Is Visible      ${new_task_input}    6
        
        Input Text       ${new_task_input}    ${task_Name}
        Click Element    ${create_button} 