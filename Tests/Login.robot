*** Settings ***
Documentation         test login and search on nairaland
Library               SeleniumLibrary
Resource              ../Pages/Login/Login.resource




*** Test Cases ***
First open nairaland browser and search an item
  [Documentation]      Open browser and search an item
  [Tags]               regression     smoke
  Search an item       ${naira_url}  ${browser}  ${search_field}  ${search_item}  ${search_button}

Next login with user name
  [Documentation]      input username and password then login
  [Tags]               regression     smoke
  Login with username  ${login_link}  ${user_field}  ${username}  ${password_field}  ${password}  ${button_login}
  Wait Until Element Contains  ${usernametext}  ${username}  timeout=${timeout}
  Capture Page Screenshot

Now search for the next item
  [Documentation]      input search item and click search
  [Tags]               smoke
  Search next item     ${search_field2}   ${search_item2}   ${search_button}




