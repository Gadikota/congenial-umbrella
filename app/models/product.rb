class Product < ApplicationRecord
  belongs_to :category
  has_and_belongs_to_many :users
  has_many :images, as: :resource
  validates_presence_of :name, :price, :category_id
end