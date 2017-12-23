class Teacher < ApplicationRecord
  has_many :teacher_assignments
  has_many :courses, through: :teacher_assignments
  validates :first_name, presence: true
  validates :last_name, presence: true
end
