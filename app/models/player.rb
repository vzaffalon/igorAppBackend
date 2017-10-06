class Player < ApplicationRecord
  belongs_to :adventure
  belongs_to :user

  validates_presence_of :nickname
end
