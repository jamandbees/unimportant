require 'spec_helper'

describe ToDoItem, :type => :model do
  context "A basic to do item" do
    let(:subject) {FactoryGirl.build(:to_do_item)}

    it "can have 140 characters in content" do
      correct_content = "a" * 140
      subject.content = correct_content
      expect(subject).to be_valid
    end

    it "cannot have 141 characters in content" do
      incorrect_content = "a" * 141
      subject.content = incorrect_content
      expect(subject).to be_invalid
    end
  end  
end
