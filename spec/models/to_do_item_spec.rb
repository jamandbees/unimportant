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

    it "has a false deleted flag" do
      expect(subject.deleted?).to be false
    end

    it "can set deleted" do
      subject.destroy
      expect(subject.deleted?).to be true
    end
  end

  context "When expiring a to do item" do
    let(:unexpired_to_do_item) {FactoryGirl.create(:to_do_item)}  
    let(:expired_to_do_item) {FactoryGirl.create(:to_do_item, created_at: DateTime.now - (10.days + 1.hour))}

    it "is not expired by default" do
      expect(unexpired_to_do_item.expired?).to be false
    end

    it "expires after 10 days" do
      expired_to_do_item.set_will_expire_at(DateTime.now - 1.hour)
      expect(expired_to_do_item.expired?).to be true
    end

    it "can set will expire at on create" do
      will_expire_at = DateTime.now - 5.hours
      test_item = ToDoItem.create(content: "foo", will_expire_at: will_expire_at)
      expect(test_item.will_expire_at).to eq will_expire_at
      test_item.save
      expect(test_item.will_expire_at).to eq will_expire_at
    end
  end
end
