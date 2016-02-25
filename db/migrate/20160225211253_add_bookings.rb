class AddBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string  :booking_start
      t.string  :booking_end
      t.boolean :confirmation
      t.string  :frequency

      t.references :ward, index: true
      t.references :subject, index: true
      t.references :tutor_detail, index: true
      t.timestamps null: false
    end
    add_foreign_key :bookings, :wards
    add_foreign_key :bookings, :subjects
    add_foreign_key :bookings, :tutor_details
  end
end
