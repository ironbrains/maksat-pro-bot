class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.integer :telegram_id,       null: false
      t.string  :telegram_username, null: false
      t.string  :jwt
      t.string  :current_screen

      t.timestamps
    end

    add_index :users, :telegram_id,       unique: true
    add_index :users, :telegram_username, unique: true
  end
end
