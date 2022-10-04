*** Settings ***
Documentation                      First is to navigate to login page
Library                            SeleniumLibrary
Resource                           ../Pages/Login/Login.resource


*** Test Cases ***
First get to the login page
  [Documentation]                 Opens browser and navigates to login page
  [Tags]                          regression         smoke
  Click to login                  ${NL_URL}     ${Browser}       ${Click_login}







