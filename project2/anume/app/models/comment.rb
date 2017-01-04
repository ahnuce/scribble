class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :anime
  validates_presence_of :user
  validates_presence_of :anime
  validates_presence_of :body
end
