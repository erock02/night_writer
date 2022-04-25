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
    expect(a_to_br.translate_letter(a_to_br.message)).to eq(["0.","..",".."])
  end

  it 'translates a couple of letters' do
    ab_to_br = ToBraille.new("ab")
    expect(ab_to_br.translate_message(ab_to_br.message)).to eq([["0.","..",".."],["0.","0.",".."]])
  end

  it 'displays translation correctly' do
    ab_to_br = ToBraille.new("ab")
    expect(ab_to_br.format_message).to eq(["0.0.", "..0.", "...."])
  end

end
