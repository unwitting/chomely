class CreateResidents < ActiveRecord::Migration[5.2]
  def change
    create_table :residents do |t|
      t.belongs_to :room, index: true
      t.string :name
      t.date :dob
      t.text :image_url

      t.timestamps
    end
  end
end
