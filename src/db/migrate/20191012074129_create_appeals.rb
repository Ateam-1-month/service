class CreateAppeals < ActiveRecord::Migration[6.0]
  def change
    create_table :appeals do |t|
      t.references :student, null: false, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
