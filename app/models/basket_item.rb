class BasketItem < ApplicationRecord
  belongs_to :menu_item
  belongs_to :basket
end
