class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items, foreign_key: "orders_id", class_name: "OrderItem"
end