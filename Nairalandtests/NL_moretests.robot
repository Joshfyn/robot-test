*** Settings ***
Documentation                      First is to navigate to login page
Library                            SeleniumLibrary


*** Variables ***
# URL categories
${NL_URL}                          https://www.nairaland.com/

# Browser categories
${Browser}                         googlechrome

# Locators
${Click_login}                     //*[@id="up"]/tbody/tr/td/a[1]
${loginpage}                       //h2[text()]
${Username_field}                  //input[@name='name' and @type='text']
${password_field}                  //input[@name='password' and @type='password']
${Clicklogin_button}               //input[@type='submit' and @value='Login']
${welcome message}                 //*[@id="up"]/tbody/tr/td
${Click_search}                    //h1/following-sibling::form[@action='/search']//input[@type='submit' and @value='Search']
${Search_field}                    //table[@id='up']//td//form[@action='/search']//input[@type='text' and @name='q']
${User}                            //*[@id="up"]/tbody/tr/td/a[1]
${Username_element}                //a[@href='/outstandingmam']
${edit_profile}                    //a[@href='/editprofile']


# Text
${Username}                        outstandingmam
${password}                        olumi1234
${search_item}                     Immigrant

# Timeout
${Timeout}                         10


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

 Input text           ${search_field2}   ${search_item2}
  Click button         ${search_button}
  Capture Page Screenshot





