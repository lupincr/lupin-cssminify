require "lupin"
require "./src/lupin-cssminify.cr"

Lupin.task("minify")
  .src("./src/css/*.css")
  .pipe(LupinCSSMinify::Minifier.new)
