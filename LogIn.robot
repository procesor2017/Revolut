*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
*** Variables ***
${URL}          https://sandbox-business.revolut.com/signin
${BROWSER}      Chrome
*** Keywords ***
LogIN
    [Arguments]     ${name}     ${password}
    Open Browser    ${URL}  ${BROWSER}
    Wait Until Element Is Visible       //*[@id="app"]/div/div[2]/div[1]/div/div[3]/div/div/div/div[1]/div[1]/div/div[1]/div[2]/input
    Input Text                          //*[@id="app"]/div/div[2]/div[1]/div/div[3]/div/div/div/div[1]/div[1]/div/div[1]/div[2]/input   ${name}
    Wait Until Element Is Visible       //*[@id="app"]/div/div[2]/div[1]/div/div[3]/div/div/div/div[1]/div[2]/label/div[2]/div/input
    Input Text                          //*[@id="app"]/div/div[2]/div[1]/div/div[3]/div/div/div/div[1]/div[2]/label/div[2]/div/input    ${password}
    Click Button                        //*[@id="app"]/div/div[2]/div[1]/div/div[4]/div/div/button
    Wait Until Element Is Visible       //*[@id="app"]/div/div[2]/div[1]/div[2]/div/div[3]/div[1]/div[1]/div[2]/div/div/div[1]/div/div/h1
Close
    Close All Browser
*** Test Cases ***
Pokus
    LogIN   jan.egermaier@tesena.com    Tesena2019.
