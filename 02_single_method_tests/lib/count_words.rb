def count_words(text)
  if !/[[a-zA-Z]]/.match? text
    return "Please enter words only"
  else words = text.split(" ")
    return words.length
  end
end