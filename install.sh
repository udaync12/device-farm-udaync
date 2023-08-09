rm -rf /tmp/device-farm-udaync
export APPIUM_HOME=/tmp/device-farm-udaync
echo 'Building Plugin'
npm run build
echo 'Uninstall Plugin'
./node_modules/.bin/appium plugin uninstall device-farm-udaync
echo 'Install Plugin'
./node_modules/.bin/appium plugin install --source=local .

echo 'Plugin List'
./node_modules/.bin/appium plugin list

echo 'Installing UIAutomator2 driver'
./node_modules/.bin/appium driver install uiautomator2

echo 'Installing XCUIDriver driver'
./node_modules/.bin/appium driver install xcuitest
