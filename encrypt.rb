def encrypt(text) # expect to be all caps
  # input example => "THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG"
  # prepare an array of 26 alphabets A - Z
  alphabet = ("A".."Z").to_a
  # turn the text into array of characters
  characters = text.chars
  # replace each letters with the one that 3 positions before
  cyphered_array = characters.map do |char|
    #first get the index of the char in the alphabet array
    index = alphabet.index(char) # if char is "G", index is 6
    #subtract 3 from the index
    # index_of_cypher = index - 3 # 3
    #use that number to get the cypher character from a-z array
    index.nil? ? char : alphabet[index - 3]
  end

  # join them together
  cyphered_array.join
end

