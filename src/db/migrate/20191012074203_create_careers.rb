class CreateCareers < ActiveRecord::Migration[6.0]
  def change
    create_table :careers do |t|
      t.references :student, null: false, foreign_key: true
      t.string :name
      t.date :start_date
      t.date :end_date
      t.string :role
      t.text :content

      t.timestamps
    end
  end
end
