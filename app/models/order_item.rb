class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :cup

  has_many :add_ons, class_name: 'OrderItemAddOn'

end