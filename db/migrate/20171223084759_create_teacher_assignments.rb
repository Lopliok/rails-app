class CreateTeacherAssignments < ActiveRecord::Migration[5.1]
  def change
    create_table :teacher_assignments do |t|
      t.belongs_to :teacher, index: true
      t.belongs_to :course, index: true

      t.timestamps
    end
  end
end
