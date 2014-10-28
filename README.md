# lineman-structure

This is a plugin to modify the default source code
structure for [Lineman](http://linemanjs.com).

## What's this plugin do?

Lineman uses a very particular directory structure. It looks like this:

``` bash
.
├── app
│   ├── js                  # <-- JS & CoffeeScript
│   ├── img                 # <-- images (are merged into the 'img' folder inside of generated & dist)
│   ├── static              # <-- any other static files that need to be placed in a path relative to `/`
│   └── pages               # <-- static HTML pages (underscore and handlebars templates are supported)
│       └── index.us        # <-- a template used to produce the application's index.html
│   └── templates           # <-- client-side templates
│       ├── other.us        # <-- other templates will be compiled to a window.JST object
│       └── thing.hb        # <-- underscore & handlebars are both already set up
│       └── _partial.hb     # <-- a handlebars partial, usable from within other handlebars templates
├── config
│   ├── application.js      # <-- Override application configuration
│   ├── files.js            # <-- Override named file patterns
│   ├── server.js           # <-- Define custom server-side endpoints to aid in development
│   └── spec.json           # <-- Override spec run configurations
├── dist                    # <-- Generated, production-ready app assets
├── generated               # <-- Generated, pre-production app assets
├── grunt.js                # <-- gruntfile defines app's task config
├── package.json            # <-- Project's package.json
├── tasks                   # <-- Custom grunt tasks can be defined here
├── spec
│   ├── helpers             # <-- Spec helpers (loaded before other specs)
│   └── some-spec.coffee    # <-- All the Jasmine specs you can write (JS or Coffee)
└── vendor                  # <-- 3rd-party assets will be prepended or merged into the application
    ├── js                  # <-- 3rd-party Javascript
    │   └── underscore.js   # <-- Underscore, because underscore is fantastic.
    ├── img                 # <-- 3rd-party images (are merged into the 'img' folder inside of generated & dist)
    ├── css                 # <-- 3rd-party CSS
    └── static              # <-- any 3rd-party static files that need to be placed in a path relative to `/`
``` 

This plugin will modify the directory structure as follows:

``` bash
.
├── bower.json					# Bower 3rd-party JavaScript dependencies descriptor
├── src
│	├── app						# <-- JS, CoffeeScript, Html Fragments
│	├── css						# <-- application CSS, LESS or SASS style sheets
│	├── img						# <-- images (are merged into the 'img' folder inside of generated & dist)
│	├── pages					# <-- static HTML pages (underscore and handlebars templates are supported)
│	│   └── index.us        	# <-- a template used to produce the application's index.html
│	└── static					# <-- any other static files that need to be placed in a path relative to `/`
├── config
│	├── application.js      	# <-- Override application configuration
│	├── files.js            	# <-- Override named file patterns
│	├── server.js       	    # <-- Define custom server-side endpoints to aid in development
│	└── spec.json       	    # <-- Override spec run configurations
├── dist                    	# <-- Generated, production-ready app assets
│	├── generated               # <-- Generated, pre-production app assets
│	├── grunt.js                # <-- gruntfile defines app's task config
│	├── package.json            # <-- Project's package.json
│	├── tasks                   # <-- Custom grunt tasks can be defined here
├── test						# <-- Tests
│	├── e2e						# <-- End to End Integration Tests             	
│	├── unit					# <-- Unit Tests
│	└── vendor					# <-- 3rd-party test dependencies
└── vendor             			# <-- 3rd-party assets will be prepended or merged into the application
    ├── bower_components		# <-- 3rd-party bower dependencies
    ├── css              		# <-- 3rd-party CSS, LESS or SASS style sheets
    ├── img        	      		# <-- 3rd-party images (are merged into the 'img' folder inside of generated & dist)
    ├── js    	    	      	# <-- 3rd-party Javascript
    ├── static  	            # <-- any 3rd-party static files that need to be placed in a path relative to `/`
    └── webfonts    	        # <-- any 3rd-party fonts
``` 

## Notes

* The source code is placed in **src** parent structure
* The test code is placed into the **test** parent structure

## Installation

```bash
$ npm install --save-dev lineman-structure
```
