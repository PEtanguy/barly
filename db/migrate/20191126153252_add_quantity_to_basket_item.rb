class AddQuantityToBasketItem < ActiveRecord::Migration[5.2]
  def change
    add_column :basket_items, :quantity, :integer
  end
end
