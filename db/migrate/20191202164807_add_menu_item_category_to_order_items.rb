class AddMenuItemCategoryToOrderItems < ActiveRecord::Migration[5.2]
  def change
    add_column :order_items, :menu_item_category, :string
  end
end
