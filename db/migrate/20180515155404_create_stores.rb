class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude
      t.float :coordinates, default: [], array: true

      t.timestamps
    end

  end
end
