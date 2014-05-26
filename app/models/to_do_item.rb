class ToDoItem < ActiveRecord::Base
  belongs_to :to_do_list
  validates :content, length: {maximum: 140}
end