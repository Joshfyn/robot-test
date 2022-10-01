*** Settings ***
Documentation               keywords define for registration page
Variables                   registration.yaml


*** Variables ***
&{text_fields}
...     ${search_field}=${var_imm}
...		${email_field}=${invalid_email}


*** Keywords ***
Provide Text Data and Submit
    [Documentation]         provides test dato to the text field and clicks submit
    [Arguments]             ${locator}          ${text_data}        ${search_locator}
    Input Text              ${locator}          ${text_data}
    Click Element           ${search_locator}

Fill Text Fields For Registration Page
    [Documentation]         fills text field for registration page
    FOR     ${key}          ${value}        IN      &{text_fields}
        Input Text          ${key}          ${value}
    END
    Capture Page Screenshot