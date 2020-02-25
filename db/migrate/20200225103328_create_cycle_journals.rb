class CreateCycleJournals < ActiveRecord::Migration[6.0]
  def change
    create_table :cycle_journals do |t|
      t.belongs_to :cycle, null: false, foreign_key: true
      t.belongs_to :journal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
