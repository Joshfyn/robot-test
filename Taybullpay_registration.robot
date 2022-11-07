*** Settings ***
Documentation                       Test suit to register on Taybullpay Page
Library                             SeleniumLibrary


*** Variables ***
${Taybullpay_URL}                   https://taybullpay.com/

#Browser
${Browser}                          chrome

#Locator
${signup_page}                      //div[@class='v-list-item__title menu-list' and contains (text(), 'Sign Up')]
${name_field}                       //input[@name='fullname' and @type='text']
${email_field}                      //input[@name='username' and @type='email']
${password_locator}                 //input[@id='password' and @name='password' and @autocomplete='new-password']
${click_signup}                     //button[@type='submit' and @form='sign-in-form']
${Verify_number}                    //h2[text()='Verify your phone number with a code']
${Dropdown_element}                 //button[@type='button']//span[@class='hamburger-box']
${Welome_locator}                   //p[@class='subheading' and contains (text(), 'Welcome to TaybullPay!')]
${Tayblepay_logo}                   //a[@href='/send-money']/img[@src='/img/tenant-logo.d54d6209.png' and @alt='logo']

#Text
${sign_name}                        Kolapo
${sign_email}                       kenny_alonge@outlook.com
${sign_password}                    123456#
${verification_text}                Verify number with a code

*** Keywords ***
Open System Browser and click
   [Documentation]                  Open System Browser
   [Arguments]                      ${URL}      ${website}      ${Dropdown_sign}      ${Tayblepay_botton}      ${signup_link}      ${Welome_text}
   open browser                     ${URL}      ${website}
   click element                    ${Dropdown_sign}
   wait until element is visible    ${Tayblepay_botton}      timeout=10
   click element                    ${signup_link}
   wait until element is visible    ${Welome_text}

Provide Text Data and Submit
    [Documentation]                 Provide text data in the text field and clicks submit
    [Arguments]                     ${username_field}  ${username}  ${email_locator}  ${email}  ${password_field}  ${password}  ${signup_field}
    input text                      ${username_field}  ${username}
    input text                      ${email_locator}  ${email}
    input password                  ${password_field}  ${password}
    click button                    ${signup_field}

*** Test Cases ***
Verify that user can register on taybull page using a valid email
    [Documentation]                 Open browser and navigate to the login page
    [Tags]                          regression                  smoke
    Open System Browser and click   ${Taybullpay_URL}  ${Browser}  ${Dropdown_element}  ${Tayblepay_logo}  ${signup_page}  ${Welome_locator}
    Provide Text Data and Submit    ${name_field}  ${sign_name}  ${email_field}  ${sign_email}  ${password_locator}  ${sign_password}  ${click_signup}
    wait until element is visible   ${Verify_number}
    [Teardown]                      close browser

   # Precondition: Open a web browser and navigate to Taybullpay page
   # Steps to reproduce or execute:
        #1. Navigate to the sign-up page
        #2. Provide Name,valid Email and password
        #3. Click sign-up here
   # Expected result: User is able to register on the Taybullpay page