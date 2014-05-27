FactoryGirl.define do
  factory :to_do_list do
  end

  factory :three_item_list, parent: :to_do_list do
    after(:create) do |list|
      to_do_items << FactoryGirl.create(:to_do_item, {content: "item one", to_do_list: list, created_at: (DateTime.now - 1.hour)})
      to_do_items << FactoryGirl.create(:to_do_item, {content: "item two", to_do_list: list, created_at: (DateTime.now - 1.day)})
      to_do_items << FactoryGirl.create(:to_do_item, {content: "item three", to_do_list: list, created_at: (DateTime.now)})
    end
  
  end
end

