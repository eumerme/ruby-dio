require_relative 'product'
require_relative 'marketplace'

productOne = Product.new("forma de bolo 25cm", 50.55)

Marketplace.new(productOne).buy