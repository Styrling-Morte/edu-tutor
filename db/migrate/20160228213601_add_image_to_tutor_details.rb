class AddImageToTutorDetails < ActiveRecord::Migration
  def change
    add_column :tutor_details, :image, :string
  end
end
