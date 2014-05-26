class AssociateToDoListAndToDoItem < ActiveRecord::Migration
  def change
    change_table :to_do_items do |t|
      t.belongs_to :to_do_list
    end
  end
end
