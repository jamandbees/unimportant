desc "This task is called by the Heroku scheduler add-on"
task :expire_to_do_items => :environment do
  puts "Expiring to do items"
  ToDoItem.expire_all
  puts "Done expiring to do items"
end