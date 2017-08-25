class Adventure < ApplicationRecord
  belongs_to :user
  has_many :sessions
  has_many :players
end
