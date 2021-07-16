*** Settings ***
Resource            ../../imports.robot

*** Keywords ***
Open website
        Open Browser        ${url}           ${webdriver}
#        Set Window Size     1200             1000
        Maximize Browser Window


