*** Settings ***
Documentation           Test cases collection for conversion functionality
Resource                ../pages/registration/registration.resource
Resource                ../pages/common.resource


*** Variables ***
${fullName}             Testing Collection
${fullName_2}           Testing Collection 2
${email_add}            notop65660@canyona.com
${invalid_email_add}    notop65660canyona.com
${password}             testingMytechBase
${failure_alert}        //div[@class='v-messages__wrapper']//div[text()='E-mail must be valid']

&{form_action}
...   ${name_locator}=${fullName_2}
...   ${email_locator}=${email_add}
...   ${password_locator}=${password}


*** Test Cases ***
CXXX Verify That User Can Register Using A Valid Email
    [Documentation]               Verifies user can register using valid email address
    [Tags]                        regression
    Open Browser and Navigate To Home Page
    Navigate To Registration Page
    Fill In Form Fields For Registration Page       ${fullName}     ${email_add}    ${password}
    Submit Form Field
    Wait Until Element Is Visible                   ${expected_locator}
    [Teardown]    Close Browser


Verify That User Cannot Register Using An Incorrect Email Address
    [Documentation]               Verifies user cannot register using an invalid email address
    [Tags]                        regression    smoke
    Open Browser and Navigate To Home Page
    Navigate To Registration Page
    Fill In Form Fields For Registration Page       ${fullName}     ${invalid_email_add}    ${password}
    Submit Form Field
    Wait Until Element Is Visible       ${failure_alert}
    [Teardown]    Close Browser


Verify That User Can Register Using A Single Email
    [Documentation]               Verifies user can register using valid email address II
    [Tags]                        regression
    Open Browser and Navigate To Home Page
    Navigate To Registration Page
    Fill In Form Fields For Registration Page II    &{form_action}
    Submit Form Field
    Wait Until Element Is Visible                   ${expected_locator}
    [Teardown]    Close Browser