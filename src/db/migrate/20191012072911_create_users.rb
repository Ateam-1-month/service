class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.boolean :is_company, default: false
      t.boolean :is_student, default: false
      t.string :password_digest
      t.string :activation_digest
      t.boolean :activated, default: false
      t.datetime :activated_at

      t.timestamps
    end
  end
end
