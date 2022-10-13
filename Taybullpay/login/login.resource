*** Settings ***
Documentation            keywords for verifying login
Library                  SeleniumLibrary


*** Variables ***
# Url categories
${website}             https://www.taybullpay.com/

# Browser categories
${browser}              ff


# locators

${login_element}        //a[@href='/login']//span
${email_field}          //label[@class='v-label theme--light']/following-sibling::input[@id='input-20' and @type='email']
${password_field}       //input[@id='password' and @type='password']
${signin_button}        //button[@form='sign-in-form']//span
${alert_element}        //div[@class='v-alert__content']


# Texts

${username}             outstandingmam@gmail.com
${password}             Olumi@1234
${invalid_message}      Invalid username or password







*** Keywords ***
Open URL login
  [Documentation]        open browser and input details
  [Arguments]            ${URL}  ${browse}  ${login_link}
  open browser           ${URL}  ${browse}
  click element          ${login_link}

Input user details
   [Documentation]       enter user details and login
   [Arguments]           ${user_locator}  ${username}  ${pwd_locator}  ${pwd}  ${login_locator}
   input text            ${user_locator}  ${username}
   input password        ${pwd_locator}  ${pwd}
   click button          ${login_locator}

