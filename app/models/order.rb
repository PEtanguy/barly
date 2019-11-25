class Order < ApplicationRecord
  belongs_to :table
  belongs_to :bar
  belongs_to :basket
end
