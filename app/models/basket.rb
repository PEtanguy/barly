class Basket < ApplicationRecord
  belongs_to :user
  has_many :basket_items
end
