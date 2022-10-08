*** Settings ***
Documentation           Test cases collection for conversion functionality
Resource                ../pages/registration/registration.resource
Resource                ../pages/common.resource


*** Variables ***
${fullName}             Testing Collection
${email_add}            notop65660@canyona.com
${invalid_email_add}    notop65660canyona.com
${password}             testingMytechBase
${failure_alert}        //div[@class='v-messages__wrapper']//div[text()='E-mail must be valid']


*** Test Cases ***
Verify That User Can Register Using A Valid Email
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


#Verify That User Can Login Using A Single Email
# Precondition: 1. Open Browser
#               2. Navigate to the TaybullPay page
# Steps:
#               1. Go To Registration Page
#               2. Fill in a single name
#               3. Fill in  a valid Email Address
#               4. Provide Strong Password
#               5  Click on Sign Up
# Expected Result
#   Opens a new page that contains "Verify your phone number with a code"