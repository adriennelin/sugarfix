class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.text :body, null: false
      t.integer :rating, null: false
      t.integer :biz_id, null: false
      t.string :reviewer_name, null: false
      t.string :reviewer_img
      t.timestamps
    end
    add_index :reviews, :biz_id
  end
end
