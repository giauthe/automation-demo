*** Settings ***
Resource            ../../imports.robot

*** Keywords ***
Open website
        Open Browser        ${url}           ${webdriver}
#        Set Window Size     1200             1000
        Maximize Browser Window

Click element with border-color
    [Arguments]          ${element}            ${color}
    Wait Until Page Contains Element    ${element}              ${timeout}
    click element            ${element}
    ${css}=         Get WebElement    ${element}
    ${prop_val}=    Call Method       ${css}    value_of_css_property    border-color
    ${result}=      Run Keyword And Return Status    Should Be Equal        ${prop_val}         ${color}
    Run Keyword If      '${result}'!='True'
    ...  click element         ${element}
    ...  ELSE
    ...  log to console        element is selected


