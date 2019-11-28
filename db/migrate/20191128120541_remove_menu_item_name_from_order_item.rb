class RemoveMenuItemNameFromOrderItem < ActiveRecord::Migration[5.2]
  def change
    remove_column :order_items, :Menu_item_name, :string
  end
end
