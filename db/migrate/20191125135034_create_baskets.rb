class CreateBaskets < ActiveRecord::Migration[5.2]
  def change
    create_table :baskets do |t|
      t.references :user, foreign_key: true
      t.float :total_price

      t.timestamps
    end
  end
end
