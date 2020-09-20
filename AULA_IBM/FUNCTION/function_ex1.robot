*** Settings ***
Library     SeleniumLibrary

## -Palavras Chaves- 
*** Keywords ***

Open google 
    Open Browser                       ${GOOGLE}  ${BROWSER}
    Maximize Browser Window
    Input Text                         ${GOOGLEINPUTTEXT}    ${GOOGLETEXTSEARCH}
    Click Element                      ${GOOGLEBUTTOM}
    Wait Until Element Is Visible      ${GOOGLERESULTS}
    Click Element                      ${GOOGLERESULTS}

Robot Site
    Wait Until Element Is Visible      ${ROBOTSITEBUTTOM}
    Click Element                      ${ROBOTSITEBUTTOM}
    Sleep  3
    Click Element                      ${ROBOTSITEBUILTIN}

Nova Guia
    ${Tabs} =   Get Window Titles     
    select window  title=${Tabs[1]}
    Wait Until Element Is Visible      ${GUIDE}
    Capture Page Screenshot

Close Aba
    Close Browser


    
