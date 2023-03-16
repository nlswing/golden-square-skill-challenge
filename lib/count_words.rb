def count_words(text)
    if text.empty?
      return "" 
    elsif words = text.split(" ")
      return words.length
    elsif !text.match(/[a-zA-Z\s]/)
        raise "Please enter words only"
    end
end