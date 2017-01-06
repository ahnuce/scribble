class Anime < ApplicationRecord
  belongs_to :user, optional: true
  has_many :comments
  validates_presence_of :title


end
