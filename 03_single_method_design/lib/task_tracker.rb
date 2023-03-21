def task_tracker(text)
  if text.split.include? "#TODO" 
    return true
  else
    return false
  end
end


