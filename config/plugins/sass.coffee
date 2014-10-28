module.exports = (lineman) ->
    sass:
      main: [
        "src/css/main.scss"
        "src/css/main.sass"
      ]
      vendor: [
        "vendor/css/**/*.scss"
        "vendor/css/**/*.sass"
      ]
      app: [
        "src/css/**/*.scss"
        "src/css/**/*.sass"
      ]
      generatedVendor: "generated/css/vendor.sass.css"
      generatedApp: "generated/css/app.sass.css"