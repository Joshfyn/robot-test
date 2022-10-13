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


*** Variables ***
# Url Categories
${naira_url}              https://www.nairaland.com/

# Browser categories
${Browser}                chrome

# Locators

${search_field}        //table[@id='up']//td//form[@action='/search']//input[@type='text' and @name='q']
${search_button}       //table[@id='up']//form[@action='/search']//input[@type='submit' and @value='Search']
${user_field}          //input[@name='name' and @type='text']
${password_field}      //input[@name='password' and @type='password']
${login_link}          //a[@href='/login']
${login_button}        //input[@type='submit' and @value='Login']
${login_page}          //td[@class='grad']
${user_locator}        //a[@href='/outstandingmam' and @class='user']
${usernametext}        //a[text()='Outstandingmam']
${search_field2}       //table[@id='up']//input[@type='text' and @size='32']

# Text
${search_item}         monarchy
${username}            Outstandingmam
${password}            olumi1234
${search_item2}        immigrant

# Timeout

${timeout}             10





*** Keywords ***
Search an item
  [Documentation]             To open browser and search
  [Arguments]                 ${URL}    ${Browser}


open browser         ${naira_url}   ${browser}
  Input text           ${search_field}  ${search_item}
  Click button         ${search_button}
  Capture Page Screenshot

 Click Element         ${login_link}
  Input text           ${user_field}     ${username}
  Input Password       ${password_field}  ${password}
  Click Button         ${login_button}

