require 'till.rb'

describe Till do
  it 'Given a name of an item and return a price' do
    till = Till.new
    expect(till.prices['Cafe Latte']).to eq(4.75)
  end
end
