*** Settings ***
Documentation                    To ascertain that Invalid email will fail nairaland reset operation
Library                          SeleniumLibrary

*** Variables ***
# URL list
${Nl_URL}                        https://www.nairaland.com/

# Browser list
${Browser}                       chrome

# Locators
${login_link}                    //*[@id="up"]/tbody/tr/td/a[1]

${Email_field}                   //input [@name='email']

${submit_btn}                    //input [@type='submit' and @value='Submit']

${invalid_message}               //h2 [text()]

# Text
${invalid_email}                 bebes4sure"gmail.com

*** Keywords ***



*** Test Cases ***
Verify user cannot reset password using invalid email address
    [Documentation]             verifies a user cannot reset password using invalid email
    [Tags]                      regression       smoke
    # Precondition - open a web browser and navigate to nairaland front page
    # steps to execute -
        # 1. provide invalid email address
        # 2. click on submit
    # expected result -
        # 1. failed reset
    Open browser                 ${NL_URL}    ${Browser}
    Click Element                ${login_link}
    input text                   ${Email_field}    ${invalid_email}
    Click Element                ${submit_btn}
    wait until element contains  ${invalid_message}     The email was not found.

