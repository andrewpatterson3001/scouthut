class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :title
      t.string :descriptive_url
      t.integer :scoutmaster_id
      t.string :image
      t.timestamps
    end
  end
end
