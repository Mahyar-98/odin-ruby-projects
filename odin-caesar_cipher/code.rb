def caesar_cipher(str, num)
  lowercase_letters = ("a".."z").to_a
  uppercase_letters = ("A".."Z").to_a
  new_str = ""
  str.each_char.reduce("") do |new_str, char|
    alphabet = lowercase_letters.include?(char) ? lowercase_letters : uppercase_letters
    new_str + (alphabet.include?(char) ? alphabet[(alphabet.index(char) + num) % alphabet.length] : char)
  end
end
