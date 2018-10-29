class CreateResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :responses do |t|
      t.integer :vote, default: 0
      t.integer :answer_id, null: false
      t.text :description
    end
  end
end
