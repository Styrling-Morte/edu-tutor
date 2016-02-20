class AddParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.string :first_name
      t.string :last_name
      t.string :postal_code
      t.string :address
      t.string :city
      t.string :province
      t.string :country
      t.string :phone_number
      t.string :email
      t.string :hashed_password

      t.timestamps null: false
    end
  end
end
