# Grunt Builder v1.0.2

A set of generic scripts to run [Grunt][gruntjs] tasks at build time.


## How to Use

In your build plan, checkout this repo into a directory named `ict-grunt-builder`. Then in your task, run this:

```bash
export GRUNTCMD="grunt build"
grunt-builder/builder /app
exit $?
```


### Package.json Notes

* The build task should be defined in `.scripts.build`.

* Node version should be specified in `.engines.node`.

See the [npm documentation][npm] for more information about [Scripts][scripts] and [Engines][engines].


### Configuration

* `GRUNTCMD` The Grunt command that you want to run. Default is `npm run build`.



[gruntjs]: http://gruntjs.com/
[npm]: https://www.npmjs.org/doc/package.json.html
[scripts]: https://www.npmjs.org/doc/package.json.html#scripts
[engines]: https://www.npmjs.org/doc/package.json.html#engines
