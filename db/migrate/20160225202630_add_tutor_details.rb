class AddTutorDetails < ActiveRecord::Migration
  def change
    create_table :tutor_details do |t|
      t.text    :bio
      t.decimal :average_review
      t.integer :rate

      t.references :user, index: true
      t.timestamps null: false
    end
    add_foreign_key :tutor_details, :users
  end
end
