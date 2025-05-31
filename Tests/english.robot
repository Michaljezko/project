*** Settings ***

Library    Browser
Resource    ../Resources/resources.robot

*** Test Cases ***
Open Example Website 
    [Documentation]    Test for get english phrase from best english page   
    
    New Browser    headless=False
    New Page    https://www.bestenglish.sk/frazy-tyzdna/page/52/
    Click    [data-cky-tag="accept-button"]

    Click    a >> text="Pozrieť frázu"
    
    ${elements}=    Get Elements    h2
    FOR    ${el}    IN    @{elements}
        ${text}=    Get Property    ${el}    textContent
        Log To Console    ${text}
    END
    
    WHILE
        Click    a >> text="Ďalšia fráza"
        ${elements}=    Get Elements    h2
        FOR    ${el}    IN    @{elements}
        ${text}=    Get Property    ${el}    textContent
        Log To Console    ${text}
        END

    END
    Close Browser

Open Example Website From Chat
    [Documentation]    Test for get english phrase from best english page   
    
    New Browser    headless=False
    New Page    https://www.bestenglish.sk/frazy-tyzdna/page/52/
    Click    [data-cky-tag="accept-button"]

    Click    a >> text="Pozrieť frázu"
    
    ${elements}=    Get Elements    h2
    FOR    ${el}    IN    @{elements}
        ${text}=    Get Property    ${el}    textContent
        Log To Console    ${text}
    END

    WHILE    True
        ${result}=    Run Keyword And Ignore Error    Get Element    a >> text="Ďalšia fráza"
        Exit For Loop If    '${result[0]}' == 'FAIL'

        Click    a >> text="Ďalšia fráza"
        ${elements}=    Get Elements    h2
        FOR    ${el}    IN    @{elements}
            ${text}=    Get Property    ${el}    textContent
            Log To Console    ${text}
        END
    END

    Close Browser