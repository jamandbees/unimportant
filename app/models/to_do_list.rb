class ToDoList < ActiveRecord::Base
  has_many :to_do_items
  belongs_to :user
end
