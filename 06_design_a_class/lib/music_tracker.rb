class MusicTracker
  def initialize
    return @track_list = []
  end

  
  def add(track)
    return @track_list << track
  end
  
  def see_tracks
    return @track_list
  end 
end