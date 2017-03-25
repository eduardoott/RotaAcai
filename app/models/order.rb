class Order < ApplicationRecord

  has_many :items, class_name: 'OrderItem'

  accepts_nested_attributes_for :items, allow_destroy: true
end