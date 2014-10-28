module.exports = (lineman) ->
  files:
    coffee:
      app: [
        ###
        # Main module
        ###
        "src/app/app.module.coffee"
        
        ###
        # All other modules
        ###
        "src/app/**/*.module.coffee"
        
        ###
        # All other application javascript
        ###
        "src/app/**/*.coffee"
      ]
      spec: ["test/unit/**/*.coffee"]
      specHelpers: [
        ###
        # Add an entry for each 3rd party bower managed vendor dependency here
        ###
        
        ###
        # Pick up all other 3rd party dependencies
        ###
        "test/vendor/**/*.coffee"
      ]
      generated: "generated/js/app.coffee.js"
      generatedSpec: "generated/js/spec.coffee.js"
      generatedSpecHelpers: "generated/js/spec-helpers.coffee.js"