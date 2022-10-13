*** Settings ***
Documentation          To test login process using various data
Resource               login.resource






*** Test Cases ***
Verify that user cannot login with unregistered email
  [Documentation]       open browser and navigate to login page to try to login
  [Tags]                regression    smoke
  Open URL login        ${website}  ${browser}  ${login_element}
  Input user details    ${email_field}  ${username}  ${password_field}  ${password}  ${signin_button}