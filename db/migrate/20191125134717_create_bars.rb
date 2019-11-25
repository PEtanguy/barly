class CreateBars < ActiveRecord::Migration[5.2]
  def change
    create_table :bars do |t|
      t.text :address
      t.integer :capacity
      t.string :opening_time
      t.string :closing_time
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
