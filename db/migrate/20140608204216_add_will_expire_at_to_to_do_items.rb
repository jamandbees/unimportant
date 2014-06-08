class AddWillExpireAtToToDoItems < ActiveRecord::Migration
  def change
    add_column :do_items, :willExpireAt, :datetime
  end
end
