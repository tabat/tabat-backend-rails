class AddDeviseToUsers < ActiveRecord::Migration
  def change
    create_table "users" do |t|
      t.string :login, :null => false, :limit => 120
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      t.integer :status, :default => 0
      t.string :activation_code, :null => false, :limit => 80

      t.string :name,   :null => false, :limit => 120
      t.string :location, :limit => 120
      t.string :introduction

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
    add_index :users, :login,                unique: true
  end
end
