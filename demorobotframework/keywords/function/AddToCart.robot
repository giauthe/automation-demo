*** Settings ***
Resource            ../../imports.robot

*** Keywords ***

Add product to cart
    wait until element is visible       ${label_iphone}          ${timeout}
    click element          ${label_iphone}
    wait until element is visible       ${btn_buy}           ${timeout}
    click element           ${btn_buy}
    wait until element is visible       ${box_iphone12mini}                ${timeout}
    click element            ${box_iphone12mini}
    click element            ${txt_black}
    Wait Until Page Contains Element    ${txt_128}              ${timeout}
    click element            ${txt_128}
    Wait Until Page Contains Element        ${txt_NoAppleCare+}              ${timeout}
    Wait Until Page Contains Element        ${btn_AddToCard+}              ${timeout}
    click element            ${txt_NoAppleCare+}
    ${product_price}=     get text             ${txt_productPrice}
    Scroll Element Into View         ${btn_AddToCard+}
    click element            ${btn_AddToCard+}
    Set Test Variable       ${product_price}          ${product_price}
    Wait Until Page Contains Element        ${btn_Submit}              ${timeout}
    ${iphone_name}=       get text             ${txt_productName}
    Set Test Variable       ${iphone_name}            ${iphone_name}
    click element            ${btn_Submit}

Verify payment screen
    wait until element is visible       ${btn_checkout}            ${timeout}
    ${payment_product_name}=       get text               ${txt_paymentProductName}
    ${payment_price}=       get text               ${txt_paymentPrice}
    Scroll Element Into View            ${txt_recommendations}
    ${summary_price}=       get text               ${txt_summaryPrice}
    should be equal         ${payment_product_name}         ${iphone_name}
    should be equal         ${payment_price}                ${product_price}
    should be equal         ${summary_price}                ${product_price}











