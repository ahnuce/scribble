class Comment < ApplicationRecord
  belongs_to :article
  validates :commenter, presence: true
  validates :comments, presence: true
end
