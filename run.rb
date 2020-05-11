require "pry"
require "require_all"
require_all "app"

thor = Avenger.new("Thor", "hammer")
cap = Avenger.new("Captain America", "sheild")
iron = Avenger.new("Iron Man", "suit")
hulk = Avenger.new("Hulk", "anger")
groot = Avenger.new("Groot", "I am groot")
widow = Avenger.new("Black Widow", "Stealth")
ant = Avenger.new("Ant Man", "suit")

avengers = Movie.new("Avengers", 2012)
ant_man = Movie.new("Ant Man", 2015)
infinity = Movie.new("Avengers: Infinity Wars", 2018)
iron_man2 = Movie.new("Iron Man 2", 2010)
guardians = Movie.new("Guardians of the Galaxy", 2014)
rag = Movie.new("Thor - Ragnarok", 2017)
incredible_hulk = Movie.new("Incredible Hulk", 2008)

thor.appear_in(avengers)
thor.appear_in(rag)
thor.appear_in(infinity)
cap.appear_in(avengers)
cap.appear_in(infinity)
iron.appear_in(avengers)
iron.appear_in(infinity)
iron.appear_in(iron_man2)
hulk.appear_in(avengers)
hulk.appear_in(infinity)
hulk.appear_in(rag)
hulk.appear_in(incredible_hulk)
groot.appear_in(infinity)
groot.appear_in(guardians)
widow.appear_in(avengers)
widow.appear_in(infinity)
widow.appear_in(iron_man2)
ant.appear_in(ant_man)
ant.appear_in(infinity)

thor.appearances #=> Thor's appearances

infinity.appearances #=> Appearances in Infinity War

Movie.find_by_name("Ant Man")

binding.pry

1
