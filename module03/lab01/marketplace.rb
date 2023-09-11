class Marketplace
  def initialize(product)
    @product = product
  end

  def buy
    puts "Você comprou o produto #{@product.name} pelo valor de R$#{@product.price}"
  end
end