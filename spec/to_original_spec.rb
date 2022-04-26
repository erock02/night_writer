require 'simplecov'
SimpleCov.start
require 'rspec'
require './lib/to_original'

describe ToOriginal do
  it 'exists' do
    br_to_o = ToOriginal.new("a")
    expect(br_to_o).to be_an_instance_of(ToOriginal)
  end
end
