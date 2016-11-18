class AddNameToArchive < ActiveRecord::Migration[5.0]
  def change
    add_column :archives, :name, :string
  end
end
