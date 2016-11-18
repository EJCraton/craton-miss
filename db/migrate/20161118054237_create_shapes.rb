class CreateShapes < ActiveRecord::Migration[5.0]
  def change
    create_table :shapes do |t|
    	t.belongs_to :user, index: true
    	t.string :image
      t.timestamps
    end
  end
end
