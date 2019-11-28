class RemoveMenuItemPriceFromOrderItem < ActiveRecord::Migration[5.2]
  def change
    remove_column :order_items, :Menu_item_price, :string
  end
end
