class Building < ApplicationRecord
  has_many :rooms, dependent: :destroy
  validates :title, presence: true,
            length: { minimum: 5 }
end
