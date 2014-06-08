class AddWillExpireAtToToDoItems < ActiveRecord::Migration
  def change
    add_column :to_do_items, :will_expire_at, :datetime
  end
end
