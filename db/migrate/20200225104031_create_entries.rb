class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      t.string :date
      t.string  :entry_details
      t.belongs_to :cycle_journal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
