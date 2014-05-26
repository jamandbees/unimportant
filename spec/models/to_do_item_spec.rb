require 'spec_helper'

describe ToDoItem, :type => :model do
  it "can have 140 characters in content" do
    correct_content = "a" * 140
    subject.content = correct_content
    expect(subject).to be_valid
  end
end
