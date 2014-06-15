if (RUN_SEEDS)
  first_list = ToDoList.create
  ToDoItem.create(to_do_list: first_list, content: "I want a pony")
  ToDoItem.create(to_do_list: first_list, content: "I should set up a budget")
  ToDoItem.create(to_do_list: first_list, content: "Buy a dog", will_expire_at: DateTime.now - 5.hours)
end
