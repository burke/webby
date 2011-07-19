# Render javascript using CoffeeScript
if try_require('coffee-script', 'coffee-script')

  Webby::Filters.register :coffeescript do |input|
    CoffeeScript.compile(input)
  end

# Otherwise raise an error if the user tries to use coffeescript
else
  Webby::Filters.register :coffeescript do |input|
    raise Webby::Error, "'coffee-script' must be installed to use the coffeescript filter"
  end
end
