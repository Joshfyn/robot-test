*** Settings ***
Documentation                    To test ease of navigation to nairaland login page
Library                          SeleniumLibrary

*** Variables ***
# URL list
${Nlogin_URL}                    https://www.nairaland.com/login

# Browser list
${Browser}                       chrome

*** Keywords ***



*** Test Cases ***
Verify user can easily navigate to nairaland login page
    [Documentation]             Opens browser and navigates easily to login page
    [Tags]                      regression       smoke
    Open browser                ${Nlogin_URL}    ${Browser}

