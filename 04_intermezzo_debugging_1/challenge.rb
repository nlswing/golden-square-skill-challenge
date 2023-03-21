def get_most_common_letter(text)
  counter = Hash.new(0)
  text.chars.each do |char|
  # don't want the iteration to add spaces
    unless char == " "
      counter[char] += 1
    end
  end
counter.to_a.max_by { |k, v| v } [0]
end



# Intended output:
# 
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"
