class AddMenuItemPriceToOrderItem < ActiveRecord::Migration[5.2]
  def change
    add_column :order_items, :Menu_item_price, :float
  end
end
