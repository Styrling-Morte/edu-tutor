class AddSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string  :subject_name
    end
  end
end
