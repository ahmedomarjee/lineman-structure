module.exports = (lineman) ->
  files:
    coffee:
      app: [
        "src/app/app.module.coffee"
        "src/app/**/*.module.coffee"
        "src/app/**/*.coffee"
      ]
      spec: ["test/unit/**/*.coffee"]
      specHelpers: [
        "test/vendor/**/*.coffee"
      ]
      generated: "generated/js/app.coffee.js"
      generatedSpec: "generated/js/spec.coffee.js"
      generatedSpecHelpers: "generated/js/spec-helpers.coffee.js"