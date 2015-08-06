class CreateBadges < ActiveRecord::Migration
  def change
    create_table :badges do |t|
      t.string :evidence
      t.integer :skill_id
      t.integer :scout_id
      t.timestamps
    end
  end
end
