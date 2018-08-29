class Cart < ApplicationRecord
  belongs_to :user
  has_many :orders
  has_many :cart_items, dependent: :destroy

end
