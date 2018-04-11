require 'spec_helper'

describe 'Testing the exchange rates' do

  before(:all) do
    @exchange_rates = ParseJson.new('json_exchange_rates.json')
  end

  it 'Should be a Hash' do
    expect(@exchange_rates.json_file.is_a?(Hash)).to be true
    
  end

  it 'should contain the base as EUR' do
    expect(@exchange_rates.json_file['base']).to eq "EUR"
    
  end

  it "Should have a date string" do
    expect(@exchange_rates.json_file['date']).to be_a(String)

  end

  it "should countain 31 rates" do
    expect(@exchange_rates.json_file['rates'].count).to be 31
    
  end

  it "should all rates should be Floats" do
    
    @exchange_rates.json_file['rates'].values.each do |i|
      expect(i).to be_a(Float)
    end

  end
  

end