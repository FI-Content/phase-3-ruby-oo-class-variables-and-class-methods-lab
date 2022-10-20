require 'pry'

class Song
    attr_accessor :hit_me, :name, :artist, :genre
    @@artists = []
    @@genres = []
    @@count = 0
    @@artist_count={}
    @@genre_count={}
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        # @@artist << self
        @@count += 1
        @@artists << self.artist
        @@genres << self.genre
    end

    def self.count
        @@count
    end 
    
    def self.genres
      all_genres =  @@genres.uniq
      return all_genres
        @@genres
    end

    def self.artists
        all_artists = @@artists.uniq
        return all_artists
        # @@artists
    end

    def self.genre_count
        @@genres.map do |genre|
            b=  @@genre_count[genre] 
            # binding.pry
            if !@@genre_count.key?(genre)
                @@genre_count[genre] = 1
            else 
                @@genre_count[genre] += 1
            end
        end

        @@genre_count
    end
    
    def self.artist_count
        @@artists.map do |artist|
            if !@@artist_count.key?(artist)
                @@artist_count[artist] = 1
            else 
                @@artist_count[artist] += 1
            end
            # binding.pry
        end

        @@artist_count
    end

end

a = Song.new("Lucifer", "Jay-Z", "rap")
puts Song::genres
puts Song::artists
b = Song.new("99 Problems", "Jay-Z", "rap")
puts Song::genres
puts Song::artists
c = Song.new("hit me baby one more time", "Brittany Spears", "pop")
puts Song::genres
puts Song::artists

# binding.pry