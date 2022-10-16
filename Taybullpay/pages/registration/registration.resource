*** Settings ***
Documentation                   keywords resources for registration
Library                         SeleniumLibrary
Variables                       registration.yaml


*** Keywords ***
Navigate To Registration Page
    [Documentation]             Navigates to registration page
    Click Element               ${signup_locator}


Fill In Form Fields For Registration Page
    [Documentation]             fills in form field
    [Arguments]                 ${full_name}    ${email}    ${pwd}
    Input Text                  ${name_locator}         ${full_name}
    Input Text                  ${email_locator}        ${email}
    Input Password              ${password_locator}     ${pwd}

Submit Form Field
    [Documentation]             submits form field
    Click Button              ${submit_locator}

Fill In Form Fields For Registration Page II
    [Documentation]             fills in form field
    [Arguments]                 &{actions}
    ##  Key_locator: Value_data
    FOR   ${Key_locator}    ${Value_data}        IN      &{actions}
        Input Text          ${Key_locator}      ${Value_data}
    END