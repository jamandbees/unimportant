class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.references :to_do_list, index: true
      t.timestamps
    end
  end
end
