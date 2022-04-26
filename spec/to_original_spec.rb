require 'simplecov'
SimpleCov.start
require 'rspec'
require './lib/to_original'

describe ToOriginal do
  it 'exists' do
    br_to_o = ToOriginal.new("a")
    expect(br_to_o).to be_an_instance_of(ToOriginal)
  end

  it 'contains hash from braille to original' do
    braille_to_original = {
              ["0.","..",".."]  => "a",
              ["0.","0.",".."]  => "b",
              ["00","..",".."]  => "c",
              ["00",".0",".."]  => "d",
              ["0.",".0",".."]  => "e",
              ["00","0.",".."]  => "f",
              ["00","00",".."]  => "g",
              ["0.","00",".."]  => "h",
              [".0","0.",".."]  => "i",
              ["0.","00",".."]  => "j",
              ["0.","0.","0."]  => "k",
              ["0.","0.","0."]  => "l",
              ["00","..","0."]  => "m",
              ["00",".0","0."]  => "n",
              ["0.",".0","0."]  => "o",
              ["00","0.","0."]  => "p",
              ["00","00","0."]  => "q",
              ["0.","00","0."]  => "r",
              [".0","0.","0."]  => "s",
              [".0","00","0."]  => "t",
              ["0.","..","00"]  => "u",
              ["0.","0.","00"]  => "v",
              [".0","00",".0"]  => "w",
              ["00","..","00"]  => "x",
              ["00",".0","00"]  => "y",
              ["0.",".0","00"]  => "z",
              ["..","..",".."]  => " "
    }

    br_to_o = ToOriginal.new("a")
    expect(br_to_o.original_hash).to eq(braille_to_original)
  end
end
