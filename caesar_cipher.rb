def caesar_cipher(sentense, shift_number)
  alphabet_low = ("a".."z").to_a
  alphabet_high = ("A".."Z").to_a
  caesar_cipher_answer = ""
  sentense.each_char {|char| 
    if alphabet_low.include?(char)
      array_char = alphabet_low.index(char) + shift_number
      if array_char > 26 
        array_char = array_char - 26
        caesar_cipher_answer += alphabet_low.at(array_char)
      else
        caesar_cipher_answer += alphabet_low.at(array_char)
      end
    elsif alphabet_high.include?(char)
      array_char = alphabet_high.index(char) + shift_number
      if array_char > 26 
        array_char = array_char - 26
        caesar_cipher_answer += alphabet_high.at(array_char)
      else
        caesar_cipher_answer += alphabet_high.at(array_char)
      end
    else
      caesar_cipher_answer += char
    end
  }
    puts caesar_cipher_answer
end
caesar_cipher("Anything for a rush now!", 5)