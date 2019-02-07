require "json"

class Till
  attr_reader :prices, :shopName, :total, :tax

  def initialize(shopInfo = JSON.parse(File.read('hipstercoffee.json')))
    @shopName = shopInfo["shopName"]
    @prices = shopInfo["prices"]
    @total = 0
    @tax = shopInfo["tax"] / 100
  end

  def quantityPriceCalculator(itemName, quantity)
    @prices[itemName] * quantity
  end

  def addToTotal(itemName, quantity)
    @total += quantityPriceCalculator(itemName, quantity)
  end

  def calculateTax
    @total * @tax
  end
end
