class CreateToDoItem < ActiveRecord::Migration
  def change
    create_table :to_do_items do |t|
      t.string :content
    end
  end
end
