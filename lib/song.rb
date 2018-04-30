


class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre
    @@genre_count[@genre] = @@genres.count(@genre)
    @@artist_count[@artist] = @@artists.count(@artist)
  end

  def genre_count

     @@genres.group_by do |x|
        x
      end

    z =  @@genres.map do |k,v|
        @@genres[k] = v.length
      end

    return z

  end


  def self.count
    return @@count
  end

  def self.artists
    return @@artists.uniq
  end

  def self.genres
    return @@genres.uniq
  end

  def self.genre_count
    return @@genre_count
  end

  def self.artist_count
    return @@artist_count
  end
end
