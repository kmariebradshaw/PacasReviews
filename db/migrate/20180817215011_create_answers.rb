class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.string :text
      t.text :response
      t.boolean :other_description, default: false 
      t.integer :question_id, null: false
    end
  end
end
