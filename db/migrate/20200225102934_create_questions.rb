class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :prompt
      t.string :key
      t.belongs_to :journal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
