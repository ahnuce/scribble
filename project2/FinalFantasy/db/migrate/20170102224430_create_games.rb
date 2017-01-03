class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :title
      t.string :character
      t.text :storyline

      t.timestamps
    end
  end
end
