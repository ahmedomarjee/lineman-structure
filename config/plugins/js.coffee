module.exports = (lineman) ->
	files:
		js:
      vendor: [
        ###
        Add an entry for each 3rd party bower managed vendor dependency here
        ###
              
        ###
        Add an entry for each 3rd party manually managed vendor dependency here
        e.g. "vendor/js/my.library.js"
        ###      
        
        ###
        Pick up all other 3rd party dependencies
        ###
        "vendor/js/**/*.js"
      ]
      app: [
        ###
        Main module
        ###
        "src/app/app.module.js"
        
        ###
        All other modules
        ###
        "src/app/**/*.module.js"
        
        ###
        All other application javascript
        ###
        "src/app/**/*.js"
      ]
      spec: ["test/unit/**/*.js"]
      specHelpers: [
        ###
        Add an entry for each 3rd party bower managed vendor dependency here
        ###
        
        ###
        Pick up all other 3rd party dependencies
        ###
        "test/vendor/**/*.js"
      ]
      concatenated: "generated/js/app.js"
      concatenatedSpec: "generated/js/spec.js"
      minified: "dist/js/app.js"
      minifiedWebRelative: "js/app.js"

