require 'coffee-script'

Webby::Filters.register :coffeescript do |input|
  CoffeeScript.compile(input)
end
