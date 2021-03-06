class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.string :address
      t.string :email
      t.text :bio
      t.string :avatar

      t.timestamps
    end
  end
end
