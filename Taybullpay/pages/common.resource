*** Settings ***
Documentation                   common resources among all test collection


*** Variables ***
${browser}                  ff
${URL}                      https://taybullpay.com/

*** Keywords ***
Open Browser and Navigate To Home Page
    [Documentation]                 Opens browser and navigates to taybulpay home page
    Open Browser                    ${URL}              ${browser}


