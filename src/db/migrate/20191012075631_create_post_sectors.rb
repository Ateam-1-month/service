class CreatePostSectors < ActiveRecord::Migration[6.0]
  def change
    create_table :post_sectors do |t|
      t.references :post, null: false, foreign_key: true
      t.references :sector, null: false, foreign_key: true

      t.timestamps
    end
  end
end
