class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :full_name, null: false
      t.string :email, null: false, index: true, unique: true
      t.string :password_digest, null: false

      t.timestamps
    end
  end
end
