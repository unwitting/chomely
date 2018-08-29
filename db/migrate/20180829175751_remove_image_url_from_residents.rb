# frozen_string_literal: true

class RemoveImageUrlFromResidents < ActiveRecord::Migration[5.2]
  def change
    remove_column :residents, :image_url, :text
  end
end
