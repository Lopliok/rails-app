class CreateLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.datetime :start_at
      t.datetime :end_at
      t.integer :duration
      t.belongs_to :room, index: true
      t.belongs_to :teacher, index: true
      t.belongs_to :course, index: true

      t.timestamps
    end
  end
end
