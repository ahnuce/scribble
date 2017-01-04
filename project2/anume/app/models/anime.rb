class Anime < ApplicationRecord
  belongs_to :User
  has_many :comments
  validates_presence_of :title
validates_presence_of :user_id
validates_presence_of :body
end
