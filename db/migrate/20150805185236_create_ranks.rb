class CreateRanks < ActiveRecord::Migration
  def change
    create_table :ranks do |t|
      t.string :title
      t.string :descriptive_url
      t.string :image
      t.timestamps
    end
  end
end
