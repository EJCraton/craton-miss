class CreateArcgis < ActiveRecord::Migration[5.0]
  def change
    create_table :arcgis do |t|

      t.timestamps
    end
  end
end
