# grunt-ccjs

> grunt plugin for [ccjs](https://github.com/zweifisch/ccjs)

## Getting Started

This plugin requires Grunt `~0.4.4`

If you haven't used [Grunt](http://gruntjs.com/) before, be sure to check out the [Getting Started](http://gruntjs.com/getting-started) guide, as it explains how to create a [Gruntfile](http://gruntjs.com/sample-gruntfile) as well as install and use Grunt plugins. Once you're familiar with that process, you may install this plugin with this command:

```shell
npm install grunt-ccjs --save-dev
```

Once the plugin has been installed, it may be enabled inside your Gruntfile with this line of JavaScript:

```js
grunt.loadNpmTasks('grunt-ccjs');
```

## The "ccjs" task

```js
grunt.initConfig({
  ccjs: {
    options: {
      root: 'path/to/assets/js',
      coffee: yes
    }
    files: {
      'path/to/result.js': 'source.js',
      'path/to/another-script.js': 'another-script.coffee'
    },
  },
});
```
