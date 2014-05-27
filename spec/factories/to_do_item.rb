FactoryGirl.define do
  factory :to_do_item, class: ToDoItem do
    content "Do This Thing"
    to_do_list
  end
end