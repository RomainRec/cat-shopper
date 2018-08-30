class Cart < ApplicationRecord
  belongs_to :user
  has_many :orders
  has_many :cart_items, dependent: :destroy

  def add_product(item)
    product = cart_items.find_by(item: item)

    if product
      product.quantity += 1
    else
      product = cart_items.new(item: item)
    end
    product
  end
end
