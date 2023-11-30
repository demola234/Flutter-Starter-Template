echo "|Create DeepLink Android|"
adb shell am start -a android.intent.action.VIEW \
    -c android.intent.category.BROWSABLE \
    -d "http://starter.test.com/" \
    com.example.starterTemplate


echo "|Create DeepLink IOS|"
xcrun simctl openurl booted "appscheme://starter.test.com/"