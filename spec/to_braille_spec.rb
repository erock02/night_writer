require 'rspec'
require './lib/to_braille'

describe ToBraille do
  it 'exists' do
    a_to_br = ToBraille.new("a")
    expect(a_to_br).to be_an_instance_of(ToBraille)
  end

  it 'displays original message' do
    mess_to_br = ToBraille.new("a whole new world")
    expect(mess_to_br.message).to eq("a whole new world")
  end

  it 'translates a letter' do
    a_to_br = ToBraille.new("a")
    expect(a_to_br.translate_letter("a")).to eq(["0.","..",".."])
  end

end
