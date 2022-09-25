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

${registration_link}        //a[@href='/register']
${email_field}              //input[@name='email']
${submit_btn}               //input[@type='submit' and @value='Submit']
${invalid_message}          //h2[text()]

# Text
${var_immi}                 immigrant
${invalid_email}            seyeKennygmail.in

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

Verify User Cannot Register On NairaLand Registration Using Invalid Email Address
    [Documentation]         Verifies a user cannot register on the nairaland registeration page using invalid email
    [Tags]                  smoke
    # Preconditions - Open the web browser and navigate to the registration page
    # Steps to Reproduce or execute
        # 1. Provide invalid email
        # 2. click on submit
    # expected result
        # 1. failed registration
        Open Browser            ${naira_URL}        ${browser}
        Click Element           ${registration_link}
        Input Text              ${email_field}      ${invalid_email}
        Click Element           ${submit_btn}
        Wait Until Element Contains     ${invalid_message}         Invalid email address
        [Teardown]    Close Browser

