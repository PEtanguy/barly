class Bar < ApplicationRecord
  belongs_to :user
  has_many :menu_items, dependent: :destroy
  has_many :orders, dependent: :destroy
  has_many :tables, dependent: :destroy

end
