class Song

  attr_accessor :name
  @@all = []

  def initialize(name, artist=nil, genre=nil)
    @name = name
    self.artist = artist if artist
    self.genre = genre if genre
  end

  def self.all
    @@all
  end

  def self.destroy_all
    self.all.clear
  end

  def save
    @@all << self
  end

  def self.create(name)
    self.new(name).tap do|song|
      song.save
    end
  end

  def artist=(artist)
    if @artist == nil
      @artist = artist
    else
      @artist = artist
    end
    if self.artist != nil
      @artist.add_song(self)
    end
    @artist
  end

  def artist
    @artist
  end

  def genre=(genre)
    if @genre == nil
      @genre = genre
    else
      @genre = genre
    end
    if self.artist != nil
      @genre.add_song(self)
    end
    @genre
  end


end
