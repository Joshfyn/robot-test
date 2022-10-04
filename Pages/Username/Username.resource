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
${Username_field}                  //input[@name='name' and @type='text']
${password_field}                  //input[@name='password' and @type='password']
${Clicklogin_button}               //input[@type='submit' and @value='Login']
${Click_search}                    //h1/following-sibling::form[@action='/search']//input[@type='submit' and @value='Search']
${Search_field}                    //table[@id='up']//td//form[@action='/search']//input[@type='text' and @name='q']
${Username_element}                //a[@href='/outstandingmam']
${edit_profile}                    //a[@href='/editprofile']


# Text
${Username}                        outstandingmam
${password}                        olumi1234
${search_item}                     Immigrant


*** Keywords ***
Click to login
   [Documentation]                To login username
   [Arguments]                    ${URL}     ${Browser}     ${login_locator}
   Open browser                   ${URL}     ${Browser}
   Click element                  ${login_locator}