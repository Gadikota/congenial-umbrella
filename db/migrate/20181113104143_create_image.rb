class CreateImage < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :file_name
      t.integer :resource_id
      t.string :resource_type
    end
  end
end
