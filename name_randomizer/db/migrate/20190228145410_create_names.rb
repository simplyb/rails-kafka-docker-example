class CreateNames < ActiveRecord::Migration[5.2]
  def change
    create_table :names do |t|
      t.string :random_name, null: false
      t.integer :user_id, null: false, index: true

      t.timestamps
    end
  end
end
