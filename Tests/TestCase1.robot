*** Settings ***
Documentation      Verify Text Equality
Resource           ../Resources/resources.robot
Library            Browser
Variables           ../Resources/Variables.py

*** Test Cases ***
Exercise1
    Log      ${VARIABLE1}

Exercise2
    Log       ${random_numbers}   
    ${total} =  Evaluate  sum(${random_numbers})
    Should Be Equal    ${total}    ${sum_random_numbers}
   
Exercise3
    Log     ${random_number}   
    