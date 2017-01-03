class Game < ApplicationRecord::Base
  has_many :characters, dependent: :destroy
end
