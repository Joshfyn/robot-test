*** Settings ***
Documentation               Test suite to navigate to naira land page
Library                     SeleniumLibrary
Resource                    ../pages/home/home.resource



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
    Provide Text Data and Submit        ${search_field}     ${var_immi}         ${click_search}
    Wait Until Element Is Visible       ${Num_2_page}
    [Teardown]    Close Browser


