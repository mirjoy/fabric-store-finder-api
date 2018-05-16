class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :address
      t.st_point :geopoint, geographic: true

      t.timestamps
    end

    add_index :stores, :geopoint, using: :gist
  end
end
