class MorseCodeDecode
  # defined a const MORSE_CODE hash

  MORSE_CODE = {
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
  }.freeze

  # Method for character decoding of Morse code
  def self.decode_char(code)
    MORSE_CODE[code]
  end

  # Method for word decoding of Morse code
  def self.decode_word(morse_word)
    characters = morse_word.split
    characters.map { |morse_char| decode_char(morse_char) }.join
  end

  # Method for message decoding of Morse code
  def self.decode_message(message)
    message.split('   ').map { |morse_word| decode_word(morse_word) }.join(' ')
  end
end

char = MorseCodeDecode.decode_char('.-')
puts char

word = MorseCodeDecode.decode_word('-- -.--')
puts word

message1 = MorseCodeDecode.decode_message('-- -.--   -. .- -- .')
puts message1

message2 = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
decoded_message2 = MorseCodeDecode.decode_message(message2)
puts decoded_message2
