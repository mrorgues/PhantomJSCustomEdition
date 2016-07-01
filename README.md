# [PhantomJS - Custom Edition](https://github.com/mrorgues/PhantomJSCustomEdition) - Scriptable Headless WebKit

This application is a fork of PhantomJS. Please read: https://github.com/ariya/phantomjs/blob/master/README.md

# Main Goal
Issue: https://github.com/detro/ghostdriver/issues/394

Build an application which includes the following workaround:

Edit hub_register.js (src/ghostdriver) and comment out the following line: 
platform: ghostdriver.system.os.name + '-' + ghostdriver.system.os.version + '-' +

# Builds
https://github.com/mrorgues/PhantomJSCustomEdition/tree/builds
