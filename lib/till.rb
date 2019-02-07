require "json"

class Till
  attr_reader :prices, :shopName

  def initialize(shopInfo = JSON.parse(File.read('hipstercoffee.json')))
    @shopName = shopInfo["shopName"]
    @prices = shopInfo["prices"]
  end
end
