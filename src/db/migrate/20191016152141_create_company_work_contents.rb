class CreateCompanyWorkContents < ActiveRecord::Migration[6.0]
  def change
    create_table :company_work_contents do |t|
      t.references :company, null: false, foreign_key: true
      t.references :work_content, null: false, foreign_key: true

      t.timestamps
    end
  end
end
