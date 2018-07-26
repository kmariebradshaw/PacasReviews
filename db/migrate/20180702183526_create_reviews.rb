class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :product, null: false
      t.text :text, null: false
      t.integer :rating, null: false
      t.boolean :status, default: false 
      t.boolean :hightlight, default: false

      t.timestamps
    end
  end
end
