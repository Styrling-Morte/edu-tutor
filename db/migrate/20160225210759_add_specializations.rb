class AddSpecializations < ActiveRecord::Migration
  def change
    create_table :specializations do |t|
      t.integer :years_of_experience
      t.string  :qualification1
      t.string  :qualification2
      t.integer :grade_start
      t.integer :grade_end

      t.references :tutor_detail, index: true
      t.references :subject, index: true
      t.timestamps null: false
    end
    add_foreign_key :specializations, :subjects
    add_foreign_key :specializations, :tutor_details
  end
end
