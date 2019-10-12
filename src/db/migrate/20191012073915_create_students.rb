class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.references :user, null: false, foreign_key: true
      t.string :image
      t.string :first_name
      t.string :last_name
      t.string :first_name_kana
      t.string :last_name_kana
      t.integer :gender
      t.integer :age
      t.integer :prefecture
      t.string :university
      t.string :faculty

      t.timestamps
    end
  end
end
