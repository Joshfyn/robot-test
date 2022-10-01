*** Settings ***
Documentation               keywords for home collections
Variables                   home.yaml


*** Keywords ***
Provide Text Data and Submit
    [Documentation]         provides test dato to the text field and clicks submit
    [Arguments]             ${locator}          ${text_data}        ${search_locator}
    Input Text              ${locator}          ${text_data}
    Click Element           ${search_locator}