class CreateTrackers < ActiveRecord::Migration[6.0]
  def change
    create_table :trackers do |t|
      t.string :date
      t.integer :intensity
      t.string :collection
      t.belongs_to :cycle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
