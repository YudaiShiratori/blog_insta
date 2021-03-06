class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.timestamps
      
      t.integer :picture_id
      t.references :picture
      t.references :favorite_picture
      
    end
  end
end
