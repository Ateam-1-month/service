class CreateSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :skills do |t|
      t.references :student, null: false, foreign_key: true
      t.string :name
      t.integer :level
      t.text :content

      t.timestamps
    end
  end
end
