class Order < ApplicationRecord
  belongs_to :table, optional: true
  belongs_to :bar
  belongs_to :basket
  belongs_to :user
end
