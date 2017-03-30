class Order < ApplicationRecord

  has_many :items, class_name: 'OrderItem', inverse_of: :order

  before_create :save_amount

  accepts_nested_attributes_for :items, allow_destroy: true


 def save_amount
total = 0
self.items.each do |item|
total += item.cup.price
item.add_ons.each do |add_on|
total += add_on.price
end
end
self.amount = total
end

end