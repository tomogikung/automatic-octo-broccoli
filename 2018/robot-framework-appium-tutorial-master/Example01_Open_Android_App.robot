*** Settings ***
Library           AppiumLibrary

*** Variables ***
${REMOTE_URL}     http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME_ANDROID}    Android
${DEVICE_NAME_ANDROID}    Google Nexus 5 - 4.4.4 - API 19 - 1080x1920
${APP_ANDROID}    ${CURDIR}${/}app${/}app-debug.apk
${AUTOMATION_NAME}    appium

*** Test Cases ***
Open Android app
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME_ANDROID}    deviceName=${DEVICE_NAME_ANDROID}    app=${APP_ANDROID}    automationName=${AUTOMATION_NAME}
    Comment    AppiumLibrary.Click Element    //android.widget.TextView[@text='Preference']
    Comment    AppiumLibrary.Click Element    //android.widget.TextView[@text='3. Preference dependencies']
    Comment    Close All Applications
    AppiumLibrary.Input Text    id=user    athornkhu
    AppiumLibrary.Input Password    id=password    Khu580490003
    AppiumLibrary.Click Element    id=signin
