class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :text, null: false
      t.integer :rating, null: false
      t.string :status, default: "pending"
      t.integer :votes, default: 0 
      
      t.timestamps
    end
  end
end
