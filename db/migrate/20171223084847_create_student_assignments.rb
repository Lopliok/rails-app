class CreateStudentAssignments < ActiveRecord::Migration[5.1]
  def change
    create_table :student_assignments do |t|
      t.belongs_to :student, index: true
      t.belongs_to :course, index: true

      t.timestamps
    end
  end
end
