class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.text   :bussiness_summary
      t.string :url
      t.string :address
      t.string :image

      t.timestamps
    end
  end
end
