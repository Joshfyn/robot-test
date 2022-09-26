*** Settings ***
Documentation                         to check ease of navigation to Nairaland login page
Library                               SeleniumLibrary


*** Variables ***
${NL_URL}                             https://www.nairaland.com/login/
${Browser}                            chrome


*** Keywords ***


*** Test Cases ***
Verify ease of navigation to login page
  [Documentation]                     Opens browser and enters login page
  [Tags]                              regression      smoke
  Open Browser                        ${NL_URL}       ${Browser}
