# ICT Grunt Builder v1.0.0

A set of generic scripts to run [Grunt][gruntjs] tasks at build time.


## How to Use

In your build plan, checkout this repo into a directory named `ict-grunt-builder`. Then in your task, run this:

```bash
ict-grunt-builder/builder
exit $?
```


#### Full Example

```bash
git clone git@bitbucket.org:vgtf/deployit-api.git 
cd deployit-api

git clone git@bitbucket.org:vgtf/ict-grunt-builder

git clone git@bitbucket.org:vgtf/argo-docker-builder

ict-grunt-builder/builder
status=$?
if [ "$status" -gt "0" ]; then
    echo "Error while running ict-grunt-builder/builder. Exit code: $status"
    exit $status
fi

# It should be noted that the build number should always increase
BUILDNUM=1
argo-docker-builder/builder
exit $?
```


### Package.json Notes

* The build task should be defined in `.scripts.build`.

* Node version should be specified in `.engines.node`.

See the [npm documentation][npm] for more information about [Scripts][scripts] and [Engines][engines].


### Configuration

* `GRUNTCMD` The Grunt command that you want to run. Default is `npm run build`.

* `NOCLEANUP` Don't remove the `node_modules` folder after the tasks have run.

```bash
export GRUNTCMD="grunt build"
export NOCLEANUP="true"
ict-grunt-builder/builder
exit $?
```


## Author

Wilson Wise <[wilson.wise@turner.com][wwise]>



[gruntjs]: http://gruntjs.com/
[nodejs]: http://nodejs.org/
[npm]: https://www.npmjs.org/doc/package.json.html
[scripts]: https://www.npmjs.org/doc/package.json.html#scripts
[engines]: https://www.npmjs.org/doc/package.json.html#engines
[wwise]: mailto:wilson.wise@turner.com
