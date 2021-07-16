*** Settings ***
Library           Selenium2Library
#Library           AppiumLibrary
Library           String
Library           RequestsLibrary
Library           Collections
#Library           OperatingSystem
Library           ./pythonlibs/compare_string.py
Library           ./pythonlibs/get_response.py

# elements
Resource          ./elements/CommonElements.robot
Resource          ./elements/HomePage.robot
Resource          ./elements/ProductSelectionPage.robot
Resource          ./elements/PaymentPage.robot

# keywords
Resource          ./keywords/common/CommonUtils.robot
Resource          ./keywords/function/AddtoCart.robot
Resource          ./keywords/function/Api.robot

#config
Variables         ./config_${env}.yaml

#variable
Resource          ./variables/Common.robot

