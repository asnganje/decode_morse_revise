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

def decode_word(word)
    new_word = word.split(' ')
    @deco_word = new_word.map do |c|
        decode_char(c)
    end
    @deco_word.join
end


def decode_string(str1)
    @sent_split = str1.split("  ")
    @deco_sent = @sent_split.map do |w|
        decode_word(w)
    end
    @deco_sent.join(" ")
end

print decode_string("      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")