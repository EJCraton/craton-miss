class AddDescriptionToArchive < ActiveRecord::Migration[5.0]
  def change
    add_column :archives, :description, :string
  end
end
