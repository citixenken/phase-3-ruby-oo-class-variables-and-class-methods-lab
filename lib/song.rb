class Song
    attr_accessor :name, :artist, :genre

    # class variables
    @@count = 0 
    @@genres = []
    @@artists = []
    @@genre_count = Hash.new
    @@artist_count = Hash.new

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1 
        @@genres << genre
        @@artists << artist
        @@genre_count = @@genres.tally
        @@artist_count = @@artists.tally
    end

    # total number of songs created
    def self.count
        @@count
    end

    # array of all genres of existing songs ->unique
    def self.genres
        @@genres.uniq
    end

    # an array of all artists of existing songs
    def self.artists
        @@artists.uniq
    end

    # hash with keys as names of each genre
    def self.genre_count
        @@genre_count
    end

    # hash with keys as names of each artist
    def self.artist_count
        @@artist_count
    end
end
# prob = Song.new("99 Problems", "Jay-Z", "rap")
# puts Song.count
# puts Song.artists
# puts Song.genres
# puts Song.genre_count
# puts Song.artist_count