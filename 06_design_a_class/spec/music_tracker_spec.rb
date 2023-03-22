require "music_tracker"

RSpec.describe MusicTracker do
  context "no tracks are added" do
    it "returns an empty array" do
    music_tracker = MusicTracker.new
    expect(music_tracker.see_tracks).to eq []
    end
  end

  context "a track is added" do
    xit "returns the track in array" do
    music_tracker = MusicTracker.new
    music_tracker.add("Creep")
    expect(music_tracker.see_tracks).to eq ["Creep"]
    end
  end

  context "multiple tracks are added" do
    xit "returns the tracks in an array" do
    music_tracker = MusicTracker.new
    music_tracker.add("Creep")
    music_tracker.add("Just")
    expect(music_tracker.see_tracks).to eq ["Creep", "Just"]
    end
  end

  context "track is already in array" do
    xit "fails" do
    music_tracker = MusicTracker.new
    music_tracker.add("Creep")
    music_tracker.add("Just")
    expect { music_tracker.add("Just") }.to raise_error "You've already listened to this track."
    end
  end
end