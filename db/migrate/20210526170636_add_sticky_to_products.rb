class AddStickyToProducts < ActiveRecord::Migration[5.2]
  def change
  	add_column :reviews, :sticky, :boolean, default: false
  end
end
