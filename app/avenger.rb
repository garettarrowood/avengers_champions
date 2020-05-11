class Avenger
  @@all = []

  attr_reader :weapon, :name

  def initialize(name, weapon)
    @name = name
    @weapon = weapon
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_appearances # return the avenger
    all.max do |a, b|
      a.appearances.count <=> b.appearances.count
    end
  end

  def appear_in(movie)
    Appearance.new(self, movie)
  end

  def appear_in?(movie)
    movies.include?(movie)
  end

  def appearances
    Appearance.all.select do |appearance|
      appearance.avenger == self
    end
  end

  def movies
    appearances.map do |appearance|
      appearance.movie
    end
  end
end
