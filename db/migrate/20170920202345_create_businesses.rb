class CreateBusinesses < ActiveRecord::Migration[5.1]
  def change
    create_table :businesses do |t|
      t.string :name, null: false
      t.string :img_url
      t.string :address, null: false
      t.string :cross_streets
      t.float :lat, null: false
      t.float :long, null: false
      t.string :phone
      t.string :site_url
      t.string :category, null: false
      t.string :cost, null: false
      t.timestamps
    end
    add_index :businesses, :name
    add_index :businesses, :category
  end
end
