class CreateJoinTableUsersProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products_users, id: false do |t|
      t.references :user
      t.references :product
    end
  end
end
