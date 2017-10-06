class Session < ApplicationRecord
  belongs_to :adventure

  validates_presence_of :date
  validates_presence_of :title
  validates_presence_of :adventure_id
end
