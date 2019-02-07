require 'till.rb'

describe Till do
  let(:till) { Till.new }

  it 'Given a name of an item, returns a price' do
    expect(till.prices['Cafe Latte']).to eq(4.75)
  end

  describe '#quantityPriceCalculator' do
    it 'Given item and quantity, returns total price' do
      expect(till.quantityPriceCalculator('Cafe Latte', 3)).to eq(4.75 * 3)
    end
  end

  describe '#addToTotal' do
    it 'Given item and quantity, increases total' do
      expect{ till.addToTotal('Cafe Latte', 1) }.to change{ till.total }.by(4.75)
    end
  end
end
