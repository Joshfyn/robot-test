*** Settings ***
Documentation               Test suite to navigate to naira land page
Library                     SeleniumLibrary


*** Variables ***
# url categorries
${naira_URL}                https://www.nairaland.com/

# browser categories
${browser}                  ff

# Locators
${search_field}             //b/following-sibling::form//input[@type='text' and @name='q']
${click_search}             //b/following-sibling::form//input[@type='submit']
${Num_2_page}               //label/following-sibling::input[@type='submit']

# Text
${var_immi}                 immigrant

*** Keywords ***


*** Test Cases ***
Verify User Can Navigate To NairaLand Page and Search
    [Documentation]         Opens browser and navigates to the naira land page
    [Tags]                  regression      smoke
    # Preconditions - open a web browser and navigate to naira land home page
    # steps to reproduce or execute -
        # 1. go to the search field and provide search word [immigrant]
        # 2. click on search
    # expected result -
        # 1. highlight all instances of immigrants
        # 2. Show different pages
        # 3. Topics and Images checkboxes should be visible
    Open Browser            ${naira_URL}        ${browser}
    Input Text              ${search_field}     ${var_immi}
    Click Element           ${click_search}
    Wait Until Element Is Visible       ${Num_2_page}
    [Teardown]    Close Browser


