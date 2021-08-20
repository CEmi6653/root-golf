class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id, null: false
      t.integer :golf_id, null: false
      t.float :rate
      t.text :content, null: false
      t.timestamps
    end
  end
end
