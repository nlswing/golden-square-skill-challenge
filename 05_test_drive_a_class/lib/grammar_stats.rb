class GrammarStats
  def initialize
    @passed_texts = 0
    @failed_texts = 0
    @total_texts = 0
  end

  def check(text) 
    first_char = text[0]
    last_char = text[-1]
    if /[A-Z]/.match?(first_char) && /[.!?]/.match?(last_char)
      @passed_texts += 1
      @total_texts += 1
      true
    else
      @failed_texts += 1
      @total_texts += 1
      false 
    end
  end

  def percentage_good
    return ((@passed_texts.to_f / @total_texts) * 100).ceil

    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
  end
end





