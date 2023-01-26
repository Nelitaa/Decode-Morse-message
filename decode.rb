@morse_code = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}

def decode_character(character)
  @morse_code.each do |key, value|
    return value if key == character
  end
end

print decode_character('.-')

def decode_word(word)
  word = word.split
  word.each do |character|
    print decode_character(character)
  end
end

decode_word('-- -.--')

def decode_message(message)
  message = message.split('  ')
  message.each do |word|
    decode_word(word)
    print ' '
  end
end

decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
