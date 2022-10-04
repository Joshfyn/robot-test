*** Settings ***
Documentation                      Keywords for Login test
Library                            SeleniumLibrary


*** Variables ***
# URL categories
${NL_URL}                          https://www.nairaland.com/

# Browser categories
${Browser}                         googlechrome

# Locators
${Click_login}                     //*[@id="up"]/tbody/tr/td/a[1]


*** Keywords ***
Click to login
   [Documentation]                To login username
   [Arguments]                    ${URL}     ${Browser}     ${login_locator}
   Open browser                   ${URL}     ${Browser}
   Click element                  ${login_locator}
