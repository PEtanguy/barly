class CreateBasketItems < ActiveRecord::Migration[5.2]
  def change
    create_table :basket_items do |t|
      t.references :menu_item, foreign_key: true
      t.references :basket, foreign_key: true

      t.timestamps
    end
  end
end
