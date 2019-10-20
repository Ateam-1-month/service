class CreateApplies < ActiveRecord::Migration[6.0]
  def change
    create_table :applies do |t|
      t.references :post, null: false, foreign_key: true
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
