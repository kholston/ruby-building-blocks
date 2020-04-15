# This program implements a simple encryption technique
# called Caesar Cipher. It is a type of substitution 
# cipher in which each letter is replaced by a letter
# some fixed number positions down the alphabet.


def ceasar_cipher(input, shifter)

    alphabet = Array('a'..'z')
    lower_case = Hash[alphabet.zip(alphabet.rotate(shifter))]

    alphabet = Array('A'..'Z')
    upper_case = Hash[alphabet.zip(alphabet.rotate(shifter))]

    cipher = lower_case.merge(upper_case)

    input.chars.map{ |c| cipher.fetch(c , c)}.join
    
end

puts "Enter something to encrypt: "
string = gets.chomp
puts "Enter the amount to shift it: "
shift = gets.chomp
answer = ceasar_cipher(string,shift.to_i)
puts "Your encryption equals #{answer}"