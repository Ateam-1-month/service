class CreatePostFields < ActiveRecord::Migration[6.0]
  def change
    create_table :post_fields do |t|
      t.references :post, null: false, foreign_key: true
      t.references :field, null: false, foreign_key: true

      t.timestamps
    end
  end
end
