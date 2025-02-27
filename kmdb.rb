# Load Rails environment
require_relative "config/environment"

# Delete existing data to prevent duplicates
Studio.destroy_all
Movie.destroy_all
Actor.destroy_all
Role.destroy_all

# Create the studio
warner_bros = Studio.create(name: "Warner Bros.")

# Create movies
batman_begins = Movie.create(title: "Batman Begins", year_released: 2005, rated: "PG-13", studio: warner_bros)
dark_knight = Movie.create(title: "The Dark Knight", year_released: 2008, rated: "PG-13", studio: warner_bros)
dark_knight_rises = Movie.create(title: "The Dark Knight Rises", year_released: 2012, rated: "PG-13", studio: warner_bros)

# Create actors
christian_bale = Actor.create(name: "Christian Bale")
michael_caine = Actor.create(name: "Michael Caine")
liam_neeson = Actor.create(name: "Liam Neeson")
katie_holmes = Actor.create(name: "Katie Holmes")
gary_oldman = Actor.create(name: "Gary Oldman")
heath_ledger = Actor.create(name: "Heath Ledger")
aaron_eckhart = Actor.create(name: "Aaron Eckhart")
maggie_gyllenhaal = Actor.create(name: "Maggie Gyllenhaal")
tom_hardy = Actor.create(name: "Tom Hardy")
joseph_gordon_levitt = Actor.create(name: "Joseph Gordon-Levitt")
anne_hathaway = Actor.create(name: "Anne Hathaway")

# Create roles
Role.create(movie: batman_begins, actor: christian_bale, character_name: "Bruce Wayne")
Role.create(movie: batman_begins, actor: michael_caine, character_name: "Alfred")
Role.create(movie: batman_begins, actor: liam_neeson, character_name: "Ra's Al Ghul")
Role.create(movie: batman_begins, actor: katie_holmes, character_name: "Rachel Dawes")
Role.create(movie: batman_begins, actor: gary_oldman, character_name: "Commissioner Gordon")

Role.create(movie: dark_knight, actor: christian_bale, character_name: "Bruce Wayne")
Role.create(movie: dark_knight, actor: heath_ledger, character_name: "Joker")
Role.create(movie: dark_knight, actor: aaron_eckhart, character_name: "Harvey Dent")
Role.create(movie: dark_knight, actor: michael_caine, character_name: "Alfred")
Role.create(movie: dark_knight, actor: maggie_gyllenhaal, character_name: "Rachel Dawes")

Role.create(movie: dark_knight_rises, actor: christian_bale, character_name: "Bruce Wayne")
Role.create(movie: dark_knight_rises, actor: gary_oldman, character_name: "Commissioner Gordon")
Role.create(movie: dark_knight_rises, actor: tom_hardy, character_name: "Bane")
Role.create(movie: dark_knight_rises, actor: joseph_gordon_levitt, character_name: "John Blake")
Role.create(movie: dark_knight_rises, actor: anne_hathaway, character_name: "Selina Kyle")

# Output movies
puts "Movies"
puts "======"
puts ""

Movie.all.each do |movie|
  puts "#{movie.title.ljust(22)} #{movie.year_released}  #{movie.rated.ljust(6)} #{movie.studio.name}"
end

# Output top cast
puts ""
puts "Top Cast"
puts "========"
puts ""

Role.all.each do |role|
  puts "#{role.movie.title.ljust(22)} #{role.actor.name.ljust(20)} #{role.character_name}"
end 