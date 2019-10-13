class CreateSummaries < ActiveRecord::Migration[6.0]
  def change
    create_table :summaries do |t|
      t.references :company, null: false, foreign_key: true
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
