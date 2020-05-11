class Appearance

  attr_reader :avenger, :movie

  @@all = []

  def initialize(avenger, movie)
    @avenger = avenger
    @movie = movie
    @@all << self
  end

  def self.all
    @@all
  end
end
