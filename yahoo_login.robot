*** Settings ***
Documentation               Test suite to navigate to yahoo login page
Library                     SeleniumLibrary

*** Variables ***


*** Keywords ***


*** Test Cases ***
Verify User Can Navigate To Yahoo Login Page
    [Documentation]         Opens browser and navigates to the login page
    [Tags]                  regression      Smoke
    Open Browser            https://mail.yahoo.com/d/folders/1           chrome