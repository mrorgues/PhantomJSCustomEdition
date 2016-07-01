# Selenium Grid Node - PhantomJS (Custom Edition)

Selenium Node configured to run PhantomJS (Custom Edition)

## Dockerfile

[`selenium/node-phantomjs` Dockerfile](https://github.com/mrorgues/phantomjs_custom_edition/tree/master/NodePhantomJS/Dockerfile)

docker build -t phantomjs/custom_edition:version .

docker run -d --name selenium-node-phantomjs --link selenium-hub:hub phantomjs/custom_edition:version

## How to use this image

Build an image from a Dockerfile
```
$ docker build -t phantomjs/custom_edition:version .
```

You will need a Selenium Grid Hub that the Node will connect to.
```
$ docker run -d -P --name selenium-hub selenium/hub
```

Once the hub is up and running will want to launch nodes that can run tests. You can run as many nodes as you wish.
```
$ docker run -d --name selenium-node-phantomjs --link selenium-hub:hub phantomjs/custom_edition:version
```

## What is Selenium?
_Selenium automates browsers._ That's it! What you do with that power is entirely up to you. Primarily, it is for automating web applications for testing purposes, but is certainly not limited to just that. Boring web-based administration tasks can (and should!) also be automated as well.

Selenium has the support of some of the largest browser vendors who have taken (or are taking) steps to make Selenium a native part of their browser. It is also the core technology in countless other browser automation tools, APIs and frameworks.

See the Selenium [site](http://docs.seleniumhq.org/) for documation on usage within your test code.

## License

View [license information](https://github.com/SeleniumHQ/docker-selenium/blob/master/LICENSE.md) for the software contained in this image.
