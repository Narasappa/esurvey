class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :mobile_number
      t.string :encrypted_password
      t.string :salt
      t.string :reset_password_code
      t.string :reset_password_code_until
      t.string :authentication_token
      t.boolean :is_active
      t.references :political_party

      t.timestamps
    end
    add_index :users, :political_party_id
  end
end
