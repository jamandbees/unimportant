class CreateToDoItem < ActiveRecord::Migration
  def change
    create_table :to_do_items do |t|
      t.string :content
      t.timestamps
    end
  end
end
