class Adventure < ApplicationRecord
  belongs_to :user
  has_many :sessions
  has_many :players

  validates_presence_of :name
  validates_presence_of :description
  validates_presence_of :user_id
end
