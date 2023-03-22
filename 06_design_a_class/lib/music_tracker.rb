class MusicTracker
  def initialize
    return @track_list = []
  end

  
  def add(track)
    fail "You've already listened to this track." while @track_list.include? track
    return @track_list << track
  end
  
  def see_tracks
    return @track_list
  end 
end