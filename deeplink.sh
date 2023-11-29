echo "|Create DeepLink Android|"
adb shell am start -a android.intent.action.VIEW \
    -c android.intent.category.BROWSABLE \
    -d "http://starter.test.com/" \
    com.example.starter_template


echo "|Create DeepLink IOS|"
xcrun simctl openurl booted "appscheme://starter.test.com/"