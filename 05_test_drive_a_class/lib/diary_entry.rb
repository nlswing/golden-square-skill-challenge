class DiaryEntry
  def initialize(title, contents) # title, contents are string
    @title = title
    @contents = contents
    @furtherst_word_read = 0
  end

  def title
    return @title
  end

  def contents
    return @contents
  end

  def count_words
    return words.length
  end

  def reading_time(wpm) 
    fail "Reading speed must be above zero." unless wpm.positive?
    return (count_words / wpm.to_f).ceil  
    
  end

  def reading_chunk(wpm, minutes) 
    fail "Reading speed must be above zero." unless wpm.positive?
    no_words_we_can_read = wpm * minutes
    start_from = @furtherst_word_read
    end_at = @furtherst_word_read + no_words_we_can_read
    word_list = words[start_from, end_at]
    if end_at >= count_words
      @furtherst_word_read = 0
    else
      @furtherst_word_read = end_at
    end
    return word_list.join(" ")
  end

  private

  def words
    @contents.split(" ")
  end
end


