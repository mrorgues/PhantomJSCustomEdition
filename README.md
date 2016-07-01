# [PhantomJS - Custom Edition](https://github.com/mrorgues/phantomjs_custom_edition) - Scriptable Headless WebKit

This application is a fork of PhantomJS. Please read: https://github.com/ariya/phantomjs/blob/master/README.md
Main Goal

# Main Goal
Issue: https://github.com/detro/ghostdriver/issues/394

Build an application which includes the following workaround:

Edit hub_register.js (src/ghostdriver) and comment out the following line: 
platform: ghostdriver.system.os.name + '-' + ghostdriver.system.os.version + '-' +
