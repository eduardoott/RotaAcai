class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :cup

  has_and_belongs_to_many :add_ons, class_name: 'CupAddOn', join_table: :order_item_add_ons, dependent: :destroy
  
end