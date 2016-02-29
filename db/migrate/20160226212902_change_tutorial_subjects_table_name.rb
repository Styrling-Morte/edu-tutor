class ChangeTutorialSubjectsTableName < ActiveRecord::Migration
  def change
    rename_table :tutorialsubjects, :tutorial_subjects
  end
end
