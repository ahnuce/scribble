# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Character.destroy_all
Game.destroy_all
# require_relative './song_data.rb'
# require_relative './artist_data.rb'



game_data = get_game_data()
character_data = get_character_data()


game_data.each_pair do |character_name, games|
  info = character_data[characacter_name]
  current_character = Character.create!({
    name:         info[:name],
    photo_url:    info[:photo_url],
    weapon:  info[:weapon]
  })



  games.each do |game|
    Game.create!({
      title:        game[:title],
      character:        game[:character],
      storyline:  game[:storyline],
    })
  end
end
