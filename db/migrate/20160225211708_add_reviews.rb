class AddReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :score
      t.text    :comment

      t.references :user, index: true
      t.references :tutor_detail, index: true
      t.timestamps null: false
    end
    add_foreign_key :reviews, :users
    add_foreign_key :reviews, :tutor_details
  end
end
