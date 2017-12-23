class Student < ApplicationRecord
  has_many :student_assignments
  has_many :courses, through: :student_assignments

  extend Enumerize

  enumerize :study_type, in: %w(full_time part_time), predicates: true

  validates :first_name, presence: true,
            length: { maximum: 20 }

  validates :last_name, presence: true,
            length: { maximum: 20 }
end
