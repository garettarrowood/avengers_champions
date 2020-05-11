class Movie
  @@all = []

  attr_reader :name, :year

  def initialize(name, year)
    @name = name
    @year = year
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    all.find do |movie|
      movie.name == name
    end
  end

  def appearances
    Appearance.all.select do |appearance|
      appearance.movie == self
    end
  end

  def avengers
    appearances.map(&:avenger)
  end
end
