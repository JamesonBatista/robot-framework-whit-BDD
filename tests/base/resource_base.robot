***Settings***

Library     SeleniumLibrary

***Variables***

${url_base}        http://testing-ground.scraping.pro/login


***Keywords***

Input
        [Arguments]             ${element}      ${input}
        Wait Until Element Is Visible           ${element}
        Input Text              ${element}      ${input}
    
Wait Click
        [Arguments]                             ${element}              ${click}
        Wait Until Element Is Visible           ${element} 
        Click Element                           ${click}

Wait Text
        [Arguments]     ${element}            ${getText}              ${text}
        Wait Until Element Is Visible         ${element}

Text Element
        [Arguments]                     ${element}              ${text}
        Wait Until Element Is Visible         ${element}
        Element Text Should Be          ${element}              ${text}

Browser open
        Open Browser        ${url_base}     chrome
        Maximize Browser Window

Close Navigation
        Capture Page Screenshot
        Sleep           3
        Close Browser
