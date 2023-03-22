Music Tracker Class Design Recipe
1. Describe the Problem
Put or write the user story here. Add any clarifying notes you might have.

< As a user
< So that I can keep track of my music listening
< I want to add tracks I've listened to and see a list of them.

2. Design the Class Interface
Include the initializer and public methods with all parameters and return values.

```Ruby

class MusicTracker
  def initialize # this will initialize an empty array to store tracks
    return @track_list = []
  end

  def add(track) # this will take in a track that has been listened to and add it to the list of tracks
    return @track_list << track
  end

  def see_tracks # show a list of tracks that have been listened to
    return @track_list
  end
```
3. Create Examples as Tests
Make a list of examples of how the class will behave in different situations.

```Ruby

# 1
music_tracker = MusicTracker.new
music_tracker.see_tracks # => []

# 2
music_tracker = MusicTracker.new
music_tracker.add("Creep")
music_tracker.see_tracks # => ["Creep"]

# 3
music_tracker = MusicTracker.new
music_tracker.add("Creep")
music_tracker.add("Just")
music_tracker.see_tracks # => ["Creep", "Just"]

# 4
music_tracker = MusicTracker.new
music_tracker.add("Creep")
music_tracker.add("Just")
music_tracker.add("Creep") # Fail. "You've already listened to this track."


4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.

