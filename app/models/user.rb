class ToDoItem < ActiveRecord::Base
  has_one :to_do_list
end