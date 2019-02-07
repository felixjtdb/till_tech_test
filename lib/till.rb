require "json"

class Till
  attr_reader :prices, :shopName

  def initialize(shopInfo = JSON.parse(File.read('hipstercoffee.json')))
    @shopName = shopInfo["shopName"]
    @prices = shopInfo["prices"]
  end

  def quantityPriceCalculator(itemName, quantity)
    return @prices[itemName] * quantity
  end
end
