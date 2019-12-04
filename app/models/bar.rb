class Bar < ApplicationRecord
  belongs_to :user
  has_many :menu_items, dependent: :destroy
  has_many :orders, dependent: :destroy
  # has_many :tables, dependent: :destroy
  has_many :admins
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  include AlgoliaSearch
   algoliasearch do
    # all attributes will be sent
  end
end
