class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.references :company, null: false, foreign_key: true
      t.string :tel_number
      t.string :first_name
      t.string :last_name
      t.string :first_name_kana
      t.string :last_name_kana
      t.string :image
      t.string :title
      t.string :period
      t.text :content
      t.string :salary

      t.timestamps
    end
  end
end
