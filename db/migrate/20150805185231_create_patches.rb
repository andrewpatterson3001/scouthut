class CreatePatches < ActiveRecord::Migration
  def change
    create_table :patches do |t|
      t.string :evidence
      t.integer :rank_id
      t.integer :scout_id
      t.timestamps
    end
  end
end
