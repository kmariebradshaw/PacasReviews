class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :text, null: false
      t.integer :rating, null: false
      t.string :author_first
      t.string :author_last
      t.boolean :staff_favorite, default: false 
      t.integer :vote, default: 0
      t.string :author_email  
      t.string :status, default: "pending"
      
      t.timestamps
    end
  end
end
