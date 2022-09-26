*** Settings ***
Documentation                         to check ease of search on Nairaland
Library                               SeleniumLibrary


*** Variables ***
${QR_URL}                             https://www.nairaland.com/
${Browser}                            chrome

#Locators
${search_field}                       /html/body/div/form/table/tbody/tr/td/input
${click_search}                       /html/body/div/form/table/tbody/tr/td/label/input
${first_highlight}                    //*[@id="pb116999712"]/div/span

#Text
${var_Mon}                            Monarchy

*** Keywords ***


*** Test Cases ***
Verify ease of search of words
  [Documentation]                     Opens browser and enters login page
  [Tags]                              regression      smoke
  #Precondition       open a web browser and navigate to Nairaland page
  #Steps to execute
      # 1. go to the search page and enter the word [Monarchy]
      # 2. click the search button
  #Expected result
      # 1. highlight instances of the word Monarchy
      # 2. display the diffrent topics about Monarchy
  Open Browser                        ${QR_URL}           ${Browser}
  Input Text                          ${search_field}     ${var_Mon}
  click element                       ${click_search}
  Wait Until Element Contains         ${first_highlight}
  [Teardown]                          close browser