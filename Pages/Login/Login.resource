*** Settings ***
Documentation             Resources for testing nairaland login
Library                   SeleniumLibrary
Variables                 login.YAML


*** Keywords ***
Search an item
   [Documentation]        open browser and search
   [Arguments]            ${URL}   ${browser}  ${text_locator}  ${text}  ${search_locator}
   open browser           ${URL}   ${browser}
   input text             ${text_locator}  ${text}
   Click Element          ${search_locator}

Login with username
   [Documentation]        login with a user name
   [Arguments]            ${login_locator}  ${user_locator}  ${usertext}  ${password_locator}  ${passwordtext}  ${button_locator}
   Click Element          ${login_locator}
   Input text             ${user_locator}   ${usertext}
   Input Password         ${password_locator}  ${passwordtext}
   Click Button           ${button_locator}

Search next item
   [Documentation]        Search for a new item
   [Arguments]            ${search2_locator}  ${text2}  ${searchbutton_locator}
   Input text             ${search2_locator}  ${text2}
   Click button           ${searchbutton_locator}

