class AddUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :first_name
      t.string  :last_name
      t.string  :postal_code
      t.string  :address
      t.string  :city
      t.string  :province
      t.string  :country
      t.string  :phone_number
      t.string  :email
      t.string  :password_digest
      t.string  :account_type

      t.timestamps null: false
    end
  end
end
