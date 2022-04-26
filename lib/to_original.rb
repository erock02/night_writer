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

  def translate_message(message)
    translation_string = ""
    message.each do |braille|
      translation_string.concat(translate_braille(braille))
    end
    translation_string
  end

end
