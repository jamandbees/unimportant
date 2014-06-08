class AddExpiredToToDoItem < ActiveRecord::Migration
  def change
    add_column :to_do_items, :expired, :boolean, default: false
  end
end
