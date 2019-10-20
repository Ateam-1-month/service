class CreateCompanyBusinessContents < ActiveRecord::Migration[6.0]
  def change
    create_table :company_business_contents do |t|
      t.references :company, null: false, foreign_key: true
      t.references :business_content, null: false, foreign_key: true

      t.timestamps
    end
  end
end
