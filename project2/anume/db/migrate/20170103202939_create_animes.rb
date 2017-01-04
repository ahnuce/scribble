class CreateAnimes < ActiveRecord::Migration[5.0]
  def change
    create_table :animes do |t|
      t.string :title
      t.integer :episodes
      t.string :photo_url

      t.timestamps
    end
  end
end
