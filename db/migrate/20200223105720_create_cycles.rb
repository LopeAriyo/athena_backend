class CreateCycles < ActiveRecord::Migration[6.0]
  def change
    create_table :cycles do |t|
      t.string :start_date
      t.integer :cycle_length
      t.integer :period_length
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
