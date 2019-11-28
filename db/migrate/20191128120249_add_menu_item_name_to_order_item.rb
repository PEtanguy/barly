class AddMenuItemNameToOrderItem < ActiveRecord::Migration[5.2]
  def change
    add_column :order_items, :Menu_item_name, :string
  end
end
