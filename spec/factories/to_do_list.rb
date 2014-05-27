FactoryGirl.define do
  factory :to_do_list do
  end

  factory :three_item_list, parent: :to_do_list do
    after(:create) do |list|
      list.to_do_items << FactoryGirl.create(:to_do_item, {content: "middle child", to_do_list: list, created_at: (DateTime.now - 1.hour)})
      list.to_do_items << FactoryGirl.create(:to_do_item, {content: "oldest", to_do_list: list, created_at: (DateTime.now - 1.day)})
      list.to_do_items << FactoryGirl.create(:to_do_item, {content: "most recent", to_do_list: list, created_at: (DateTime.now)})
    end
  end
end

