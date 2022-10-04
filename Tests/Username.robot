*** Settings ***
Documentation                      First is to navigate to login page
Library                            SeleniumLibrary
Resource                           ../Pages/Username/Username.resource





*** Keywords ***
Click to login
   [Documentation]                To login username
   [Arguments]                    ${URL}     ${Browser}     ${login_locator}
   Open browser                   ${URL}     ${Browser}
   Click element                  ${login_locator}


*** Test Cases ***
First get to the login page
  [Documentation]                 Opens browser and navigates to login page
  [Tags]                          regression         smoke
  Click to login                  ${NL_URL}     ${Browser}       ${Click_login}

verify ease of login to user profile
  [Documentation]                 navigates to username field and ensure login then search item
  [Tags]                          smoke
  Input Text                      ${Username_field}  ${Username}
  Input Password                  ${password_field}  ${password}
  Click Button                    ${Clicklogin_button}
  Wait Until Element Is Visible   ${Username_element}
  Input Text                      ${Search_field}    ${search_item}
  Click Element                   ${Click_search}
  Click Element                   ${edit_profile}

  Test cases

