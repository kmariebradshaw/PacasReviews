class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.string :size
      t.string :color

      t.timestamps
    end
  end
end
