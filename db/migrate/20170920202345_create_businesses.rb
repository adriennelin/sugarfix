class CreateBusinesses < ActiveRecord::Migration[5.1]
  def change
    create_table :businesses do |t|
      t.string :name, null: false
      t.string :img_url
      t.string :address, null: false
      t.string :cross_streets
      t.string :neighborhood
      t.float :lat, null: false
      t.float :long, null: false
      t.string :phone
      t.string :site_url
      t.string :category, null: false
      t.float :rating, null: false
      t.string :cost, null: false
      t.text :hours
      t.timestamps
    end
    add_index :businesses, :name
    add_index :businesses, :category
    add_index :businesses, :rating
    add_index :businesses, :cost
  end
end
