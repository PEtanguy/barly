class CreateTables < ActiveRecord::Migration[5.2]
  def change
    create_table :tables do |t|
      t.references :bar, foreign_key: true
      t.integer :capacity

      t.timestamps
    end
  end
end
