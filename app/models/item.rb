class Item < ApplicationRecord
  has_many :orders
  has_many :line_items, dependent: :nullify
end
