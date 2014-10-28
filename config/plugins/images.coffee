module.exports = (lineman) ->
  config:
    images:
      files:
        "app/img/": ".nonexistent"
        "src/img/": "<%= files.img.app %>"
        "vendor/img/": "<%= files.img.vendor %>"

      root: "<%= files.img.root %>"

      dev:
        dest: "generated"

      dist:
        dest: "dist"

  files:
    img:
      app: "src/img/**/*.*"
      vendor: "vendor/img/**/*.*"
      root: "img"