class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :type
      t.string :name
      t.string :email
      t.string :password_hash
      t.date :birthday
      t.timestamps
    end
  end
end
