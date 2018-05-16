class CreateStoreTags < ActiveRecord::Migration[5.2]
  def change
    create_table :store_tags do |t|
      t.references :store, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
