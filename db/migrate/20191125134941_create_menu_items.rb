class CreateMenuItems < ActiveRecord::Migration[5.2]
  def change
    create_table :menu_items do |t|
      t.string :name
      t.float :price
      t.text :description
      t.string :ingredients
      t.references :bar, foreign_key: true
      t.references :template_item, foreign_key: true

      t.timestamps
    end
  end
end
