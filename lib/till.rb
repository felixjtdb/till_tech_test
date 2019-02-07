require "json"

class Till
  attr_reader :prices, :shopName, :total

  def initialize(shopInfo = JSON.parse(File.read('hipstercoffee.json')))
    @shopName = shopInfo["shopName"]
    @prices = shopInfo["prices"]
    @total = 0
  end

  def quantityPriceCalculator(itemName, quantity)
    return @prices[itemName] * quantity
  end

  def addToTotal(itemName, quantity)
    @total += quantityPriceCalculator(itemName, quantity)
  end
end
