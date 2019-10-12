class CreateStudentWorkContents < ActiveRecord::Migration[6.0]
  def change
    create_table :student_work_contents do |t|
      t.references :student, null: false, foreign_key: true
      t.references :work_content, null: false, foreign_key: true

      t.timestamps
    end
  end
end
