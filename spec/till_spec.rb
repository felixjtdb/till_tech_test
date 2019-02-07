require 'till.rb'
HIPSTER_TAX =  0.0864

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

  describe '#calculateTax' do
    it 'Returns total * tax' do
      test_till = Till.new
      test_till.addToTotal('Cafe Latte', 10) # 10 * 4.75 = 47.5
      expect(test_till.calculateTax).to eq(47.5 * HIPSTER_TAX)
    end
  end
end
