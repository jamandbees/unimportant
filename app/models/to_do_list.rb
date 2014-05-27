class ToDoList < ActiveRecord::Base
  has_many :to_do_items
  belongs_to :user

  def list
    return self.to_do_items.order(created_at: :desc)
  end
end
