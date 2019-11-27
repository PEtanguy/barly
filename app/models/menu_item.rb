class MenuItem < ApplicationRecord
  belongs_to :bar
  belongs_to :template_item, optional: true
  has_one_attached :drink_photo
end
