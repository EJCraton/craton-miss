class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :cpf
      t.string :telephone
      t.string :registry
      t.string :password_digest
      t.boolean :adm

      t.timestamps
    end
  end
end
