class ToBraille
  attr_reader :message,
              :braille_hash

  def initialize(message)
    @message = message
    @braille_hash = {
              "a" => ["0.","..",".."],
              "b" => ["0.","0.",".."],
              "c" => ["00","..",".."],
              "d" => ["00",".0",".."],
              "e" => ["0.",".0",".."],
              "f" => ["00","0.",".."],
              "g" => ["00","00",".."],
              "h" => ["0.","00",".."],
              "i" => [".0","0.",".."],
              "j" => [".0","00",".."],
              "k" => ["0.","..","0."],
              "l" => ["0.","0.","0."],
              "m" => ["00","..","0."],
              "n" => ["00",".0","0."],
              "o" => ["0.",".0","0."],
              "p" => ["00","0.","0."],
              "q" => ["00","00","0."],
              "r" => ["0.","00","0."],
              "s" => [".0","0.","0."],
              "t" => [".0","00","0."],
              "u" => ["0.","..","00"],
              "v" => ["0.","0.","00"],
              "w" => [".0","00",".0"],
              "x" => ["00","..","00"],
              "y" => ["00",".0","00"],
              "z" => ["0.",".0","00"],
              " " => ["..","..",".."]
    }
  end

  def translate_letter(char)
    @braille_hash[char]
  end

  def translate_message(message)
    translation_array = Array.new(0)
    message.split('').each do |char|
      translation_array.append(translate_letter(char))
    end
    translation_array
  end

  def format_message(message)
    translated_array = ["","",""]
    i = 0
    translate_message(message).each do |line|
      for i in 0..2
        translated_array[i].concat(line[i])
      end
    end
    translated_array
  end

  def translate
    encoded_array = Array.new(0)
    if @message.length > 40
      @message.split('').each_slice(40){|block| encoded_array << format_message(block.join(''))}
      encoded_array
    else
      format_message(@message)
    end
  end

end
