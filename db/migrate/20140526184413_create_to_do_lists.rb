class CreateToDoLists < ActiveRecord::Migration
  def change
    create_table :to_do_lists do |t|

      t.timestamps
    end
  end
end
