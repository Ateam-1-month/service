class CreateStudentSectors < ActiveRecord::Migration[6.0]
  def change
    create_table :student_sectors do |t|
      t.references :student, null: false, foreign_key: true
      t.references :sector, null: false, foreign_key: true

      t.timestamps
    end
  end
end
