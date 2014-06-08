class AddDeletedToToDoItem < ActiveRecord::Migration
  def change
    add_column :to_do_items, :deleted, :boolean, default: false
  end
end
