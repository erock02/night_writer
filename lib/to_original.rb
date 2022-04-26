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

  def format_message(message)
    counter = message.length
    formatted_array = Array.new(0)
    i = 0
    while i < (counter/3 - 1)
      formatted_array[i/2] = [message[i] + message [i+1]]
      formatted_array[i/2].concat([message[i + counter/3] + message[i + counter/3 +1]])
      formatted_array[i/2].concat([message[i + ((2* counter)/3)] + message [i + ((2* counter)/3) +1]])
      i += 2
    end
    formatted_array
  end

  def translate_message
    translation_string = ""
    format_message(@omessage).each do |braille|
      translation_string.concat(translate_braille(braille))
    end
    translation_string
  end

end
