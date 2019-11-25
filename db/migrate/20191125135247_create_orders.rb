class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :table, foreign_key: true
      t.references :bar, foreign_key: true
      t.references :basket, foreign_key: true
      t.datetime :creation_time
      t.datetime :completion_time
      t.text :notes
      t.string :status

      t.timestamps
    end
  end
end
