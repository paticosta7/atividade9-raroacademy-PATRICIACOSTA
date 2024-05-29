*** Settings ***

Resource   ../base.robot

*** Keywords ***
Verifica se o contentDesc contains text
    [Arguments]    ${elemento}    ${validarText}
    ${contentDesc}=    AppiumLibrary.Get Element Attribute        ${elemento}    content-desc
    Should Contain    ${contentDesc}    ${validarText}

Verifica se o contentDesc não contains text
    [Arguments]    ${elemento}    ${validarText}
    ${contentDesc}=    AppiumLibrary.Get Element Attribute    ${elemento}    content-desc
    Should Not Contain    ${contentDesc}    ${validarText}