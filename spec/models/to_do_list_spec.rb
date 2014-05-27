require 'spec_helper'

describe ToDoList, :type => :model do

  context "When the list interacts with items" do
    let(:multiple_list) { FactoryGirl.create(:three_item_list) }

    it "Can have a to do item" do
      bar = ToDoItem.create(content: "this is content", to_do_list: subject)
      expect(subject.to_do_items.first).to eq bar
    end

    it "Returns items in reverse date order" do
      expect(multiple_list.list.first.content).to eq "most recent"
      expect(multiple_list.list.last.content).to eq "oldest"
    end
  end
end
