require './lib/to_braille'
class ToOriginal < ToBraille
  attr_reader :omessage,
              :original_hash

  def initialize(omessage)
    @omessage = omessage
    super(braille_hash)
    @original_hash = @braille_hash.invert
  end

  def translate_braille(braille_array)
    @original_hash[braille_array]
  end

end
