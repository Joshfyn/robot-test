*** Settings ***
Documentation                    To ascertain that a user can successfully log in to nairaland
Library                          SeleniumLibrary

*** Variables ***
# URL list
${Nl_URL}                        https://www.nairaland.com/

# Browser list
${Browser}                       chrome

# Locators
${login_link}                    //*[@id="up"]/tbody/tr/td/a[1]

${username_field}                //input [@type='text' and @name='name']

${password_field}                //input [@name='password' and @type='password']

${login_btn}                     //input [@type='submit' and @value='Login']


# Text
${username}                     Outstandingmam

${Password}                     olumi1234

*** Keywords ***



*** Test Cases ***
Verify that login goes smoothly for a nairaland user
    [Documentation]             verifies a user can easily log in from nairaland login page
    [Tags]                      regression       smoke
    # Precondition - open a web browser and navigate to nairaland front page
    # steps to execute -
        # 1. provide valid username
        # 2. provide valid password
        # 2. click on login
    # expected result -
        # 1. page showing username
    Open browser                 ${NL_URL}    ${Browser}
    Click Element                ${login_link}
    input text                   ${username_field}    ${username}
    input password               ${password_field}    ${Password}
    Click Element                ${login_btn}

