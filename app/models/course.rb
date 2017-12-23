class Course < ApplicationRecord
  has_many :teacher_assignments
  has_many :teachers, through: :teacher_assignments

  has_many :student_assignments
  has_many :students,through: :student_assignments

  has_many :lessons
  validates :title, presence: true

  extend Enumerize

  enumerize :language, in: { czech: 1, english: 2}, default: :czech
  enumerize :study_type, in: %w(full_time part_time), predicates: true

end
