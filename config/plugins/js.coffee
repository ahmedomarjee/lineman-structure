module.exports = (lineman) ->
	files:
		js:
      vendor: "vendor/js/**/*.js"
      app: [
        "src/app/app.module.js"
        "src/app/**/*.module.js"
        "src/app/**/*.js"
      ]
      spec: ["test/unit/**/*.js"]
      specHelpers: [
        "test/vendor/**/*.js"
      ]
      concatenated: "generated/js/app.js"
      concatenatedSpec: "generated/js/spec.js"
      minified: "dist/js/app.js"
      minifiedWebRelative: "js/app.js"