class CreateTableReponses < ActiveRecord::Migration[5.2]
  def change
    create_table :table_reponses do |t|
      t.integer :vote, default: 0
      t.integer :answer_id, null: false
      t.text :description
    end
  end
end
