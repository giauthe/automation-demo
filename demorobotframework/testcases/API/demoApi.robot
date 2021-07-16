*** Settings ***
Resource            ../../imports.robot

Suite Setup    Create Session   jsonplaceholder    https://jsonplaceholder.typicode.com

*** Test Cases ***
TC_01 - Get request demo
    ${resp}=     GET On Session  jsonplaceholder  /users
    Status Should Be    200  ${resp}
    ${dataSize}=    response_size           ${resp.content}
    log to console      ${dataSize}
    ${dataType}=    response_type            ${resp.content}
    log to console      ${dataType}
    ${contentType}=     get from dictionary  ${resp.headers}     Content-Type
    should be equal     ${contentType}     application/json; charset=utf-8

TC_02 - Post request demo
    ${data}=    Create dictionary  title=Robotframework Api Demo          body=Post Request
    ${resp}=     POST On Session  jsonplaceholder  /posts  json=${data}
    log to console  ${resp.content}
    Status Should Be    201  ${resp}
    ${contentType}=     get from dictionary  ${resp.headers}     Content-Type
    should be equal  ${contentType}     application/json; charset=utf-8
    Dictionary Should Contain Value   ${resp.json()}    Post Request
