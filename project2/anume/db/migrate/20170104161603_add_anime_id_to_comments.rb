class AddAnimeIdToComments < ActiveRecord::Migration[5.0]
  def change
    add_reference :comments, :anime, foreign_key: true
  end
end
