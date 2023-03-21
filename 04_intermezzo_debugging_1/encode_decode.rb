def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  # cipher ["s", "e", "c", "r", "t", "k", "y", "a", "b", "d", "f", "g", "h", "i", "j", "l", "m", "n", "o", "p", "q", "u", "v", "w", "x"]
  ciphertext_chars = plaintext.chars.map do |char| 
    print (65 + cipher.find_index(char)).chr
  end
  return ciphertext_chars.join
end
#(65 + cipher.find_index(char)).chr
def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[char.ord - 65]
  end
  return plaintext_chars.join
end

# Intended output:
#
# > encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
#
# > decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
# => "theswiftfoxjumpedoverthelazydog"

puts encode("theswiftfoxjumpedoverthelazydog", "secretkey")
puts  decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")