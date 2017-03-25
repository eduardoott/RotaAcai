class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :cup

  has_many :add_ons, class_name: 'OrderItemAddOn'

  accepts_nested_attributes_for :add_ons, allow_destroy: true

end