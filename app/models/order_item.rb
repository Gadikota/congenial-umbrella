class OrderItem < ApplicationRecord
  belongs_to :order, foreign_key: "orders_id"
end