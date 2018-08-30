class Item < ApplicationRecord
  has_many :orders
  has_many :cart_items, dependent: :nullify
end
