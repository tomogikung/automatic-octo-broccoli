*** Settings ***
Library           AppiumLibrary    run_on_failure=AppiumLibrary.Capture Page Screenshot

*** Variables ***
${REMOTE_URL}     http://127.0.0.1:4723/wd/hub    # URL to appium server
${PLATFORM_NAME}    Android
${PLATFORM_VERSION}    6.0
${DEVICE_NAME}    Nexus
${APP_LOCATION}    /Users/appmanmachine/Desktop/ApiDemos-debug.apk
${BUNDLE_ID}      com.example.android.apis

*** Test Cases ***
test_demo
    Open App

*** Keywords ***
Open App
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP_LOCATION}    automationName=appium
    ...    bundleId=${BUNDLE_ID}
