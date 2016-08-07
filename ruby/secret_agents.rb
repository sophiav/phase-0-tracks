def encrypt(string)
  index = 0
  
  str = ""
  while index < string.length
    character = string[index]
    if character == 'z'
      str += "a"
    else
      str += character.next
    end

    index += 1
  end

  return str  # --> replace puts with return here for release 4!
end

encrypt("sophia")
# encrypt("abc")
# encrypt("zed")


def decrypt(string)
 
  index = 0
  check = "abcdefghijklmnopqrstuvwxyz"

  str = ""
  while index < string.length
    character = string[index]
    position = check.index(character)

    new_character = check[position - 1]
    str += new_character
    
    index += 1
  end

  return str

end

# decrypt("tpqijb")
# decrypt("bcd")
# decrypt("afe")

puts decrypt(encrypt("swordfish"))