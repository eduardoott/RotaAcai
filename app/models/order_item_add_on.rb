class OrderItemAddOn < ApplicationRecord
  belongs_to :order_item
  belongs_to :cup_add_on
end
