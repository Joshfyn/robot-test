*** Settings ***
Documentation               Test suite to navigate to facebook login page
Library                     SeleniumLibrary


*** Variables ***


*** Keywords ***


*** Test Cases ***
Verify User Can Navigate To Facebook Login Page
    [Documentation]         Opens browser and navigates to the login page
    [Tags]                  regression      Smoke
    Open Browser            https://www.facebook.com/           chrome
