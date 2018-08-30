class AddBioToResident < ActiveRecord::Migration[5.2]
  def change
    add_column :residents, :bio, :text
  end
end
