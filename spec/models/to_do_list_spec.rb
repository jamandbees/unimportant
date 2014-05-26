require 'spec_helper'

describe ToDoList, :type => :model do

  it "Can have a to do item" do
    bar = ToDoItem.create(content: "this is content", to_do_list: subject)

    expect(subject.to_do_items.first).to eq bar
  end

  pending "Returns items in reverse date order" 
end
