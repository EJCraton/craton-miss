class CreateShapes < ActiveRecord::Migration[5.0]
  def change
    create_table :shapes do |t|

      t.timestamps
    end
  end
end
