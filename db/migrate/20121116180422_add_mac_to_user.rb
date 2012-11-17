class AddMacToUser < ActiveRecord::Migration
  def change
    add_column :users, :macAddress, :string
  end
end
