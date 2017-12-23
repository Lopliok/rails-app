class Room < ApplicationRecord
  belongs_to :building, :foreign_key => 'building_id'
  has_many :lessons
end
