class AddTutors < ActiveRecord::Migration
  def change
    create_table :tutors do |t|
      t.string  :first_name
      t.string  :last_name
      t.string  :address
      t.string  :postal_code
      t.string  :city
      t.string  :province
      t.string  :country
      t.string  :phone_number
      t.string  :email
      t.string  :hashed_password
      t.string  :rates
      t.integer :average_review
      t.binary   :photo_image

      t.timestamps null: false
    end
  end
end
