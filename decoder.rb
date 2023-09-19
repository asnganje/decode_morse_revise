MORCECHARS =   {'.-'=> 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
'..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
'-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
'.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
'..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
'--..' => 'Z'}

def decode_char str
    decoded_char = MORCECHARS[str] 
    if decoded_char
        decoded_char.downcase
    else 
        puts 'Not a morse code'
    end
end

puts decode_char('--..')