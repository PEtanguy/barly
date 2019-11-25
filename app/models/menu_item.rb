class MenuItem < ApplicationRecord
  belongs_to :bar
  belongs_to :template_item
end
