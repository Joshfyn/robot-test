*** Settings ***
Documentation               Test suite to navigate to naira land page
Library                     SeleniumLibrary
Resource                    ../pages/registration/registration.resource


*** Test Cases ***
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
        Provide Text Data and Submit    ${email_field}       ${invalid_email}       ${submit_btn}
        Wait Until Element Contains     ${invalid_message}         Invalid email address
        [Teardown]    Close Browser

Verify That Field Text is Active
    [Documentation]         Verifies a user cannot register on the nairaland registeration page using invalid email
    Open Browser            ${naira_URL}        ${browser}
    Click Element           ${registration_link}
    Fill Text Fields For Registration Page