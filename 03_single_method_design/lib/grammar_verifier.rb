def grammar_verifier(text)
  fail "Not a sentence." if text.empty?
  
  first_char = text[0]
  last_char = text[-1]

  if /[A-Z]/.match?(first_char) && /[.!?]/.match?(last_char)
    return true 
  else
    return false
  end
end