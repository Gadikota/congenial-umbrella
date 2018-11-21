class CreateAuthenticatons < ActiveRecord::Migration[5.1]
  def change
    create_table :authenticatons do |t|
      t.string :type
      t.references :user

      t.timestamps
    end
  end
end
