class AddIndexToItems < ActiveRecord::Migration
  def change
    add_column :to_do_lists, :to_do_item, :string
    add_index :to_do_lists, :to_do_item
  end
end
