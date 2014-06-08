class ToDoItem < ActiveRecord::Base
  before_destroy { |record| record.deleted = true; false }

  belongs_to :to_do_list

  validates :content, length: {maximum: 140}
end