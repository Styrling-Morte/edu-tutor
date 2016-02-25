class AddTutorialSubjects < ActiveRecord::Migration
  def change
    create_table :tutorialsubjects do |t|
      t.references :ward, index: true
      t.references :subject, index: true
      t.timestamps null: false
    end
    add_foreign_key :tutorialsubjects, :wards
    add_foreign_key :tutorialsubjects, :subjects
  end
end
