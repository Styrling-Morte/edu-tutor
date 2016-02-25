class AddWards < ActiveRecord::Migration
  def change
    create_table :wards do |t|
      t.string :first_name
      t.string :grade_school_level

      t.references :user, index: true
      t.timestamps null: false
    end
    add_foreign_key :wards, :users
  end
end
