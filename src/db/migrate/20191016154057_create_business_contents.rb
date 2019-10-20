class CreateBusinessContents < ActiveRecord::Migration[6.0]
  def change
    create_table :business_contents do |t|
      t.string :name

      t.timestamps
    end
  end
end
