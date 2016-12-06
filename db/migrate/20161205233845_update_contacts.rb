class UpdateContacts < ActiveRecord::Migration
  def change
    add_index :contacts, :user_id
    add_index :contacts, [:email, :user_id], unique: true
  end
end
