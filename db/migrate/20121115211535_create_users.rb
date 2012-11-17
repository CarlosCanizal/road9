class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :lastname
      t.string :mobile
      t.string :home
      t.string :email
      t.string :address1
      t.string :address2

      t.timestamps
    end
  end
end
