*** Settings ***
Library    AppiumLibrary    
Resource    ../../android/base.robot


*** Variables ***
${ANDROID_PLATFORM_VERSION}           12
${APP_PACKAGE}                        com.ricardodalarme.nubank_clone
${APP_ACTIVITY}                       .MainActivity
${ANDROID_AUTOMATION_NAME}            UIAutomator2
${ANDROID_PLATFORM_NAME}              Android
${APPIUM_URL}                         http://127.0.0.1:4723


*** Keywords ***
Abrir app
    Open Application
    ...    http://127.0.0.1:4723
    ...    automationName=${ANDROID_AUTOMATION_NAME}
    ...    platformName=${ANDROID_PLATFORM_NAME}
    ...    platformVersion=${ANDROID_PLATFORM_VERSION}
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}

Teardown
    Run Keyword If Test Failed    Capture Page Screenshot
    Close All Applications


