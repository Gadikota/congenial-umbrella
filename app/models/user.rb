class User < ApplicationRecord
  has_and_belongs_to_many :liked_products, class_name: "Product"
  has_many :purchased_orders, class_name: "Order"
  has_many :purchased_items, class_name: "OrderItem", through: :purchased_orders, source: "order_items"
  has_one :profile_image, as: :resource, class_name: "Image"

  validates_presence_of :email, :password

  before_validation do
    p "before_validations"
  end
  before_save do
    p "before save"
  end
  before_create do
    p "before_create"
  end
  before_update do
    p "before_update"
  end
  before_destroy do
    p "before_destroy"
  end

  after_validation do
    p "after_validation"
  end
  after_save do
    p "after_save"
  end
  after_create do
    p "after-create"
  end
  after_update do
    p "after_update"
  end
  after_destroy do
    p "after_destroy"
  end
  after_commit do
    p "after_commit"
  end
  after_rollback do
    p "after_rollback"
  end

  around_save :around_save
  around_create :around_create
  around_update :around_update
  around_destroy :around_destroy

  def around_save
    p "around_save 1"
    yield
    p "around_save 2"
  end
  def around_create
    p "around_create 1"
    yield
    p "around_create 2"
  end
  def around_update
    p "around_update 1"
    yield
    p "around_update 2"
  end
  def around_destroy
    p "around_destroy 1"
    yield
    p "around_destroy 2"
  end
  
end