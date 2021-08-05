*** Settings ***
Resource            ../../imports.robot

Test Setup           Open website
#Test Setup           Set Selenium Speed  0.5s
Test Teardown        Close Browser

*** Test Cases ***
TC_1 - Add Iphone to cart
    [Tags]          add_to_cart             regression
        Add product to cart
        Verify payment screen
