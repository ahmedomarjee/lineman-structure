module.exports = (lineman) ->
	files:
    css:
      vendor: "vendor/css/**/*.css"
      app: "src/css/**/*.css"
      concatenated: "generated/css/app.css"
      minified: "dist/css/app.css"
      minifiedWebRelative: "css/app.css"