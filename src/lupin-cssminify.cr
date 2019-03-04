require "lupin"

module LupinCSSMinify
  class Minifier < Lupin::Plugin
    def run(input)
      input.as(Array(Lupin::InputFile)).each do |file|
        file.contents = file.contents.gsub("\n", "").gsub(" ", "")
        file.write
      end

      input
    end
  end
end
