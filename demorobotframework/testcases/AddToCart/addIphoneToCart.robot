*** Settings ***
Resource            ../../imports.robot

Suite Setup          Open website
Test Setup           Set Selenium Speed  0.5s
Suite Teardown       Close Browser

*** Test Cases ***
TC_1 - Add Iphone to cart
    [Tags]          add_to_cart             regression
        Add product to cart
        Verify payment screen

