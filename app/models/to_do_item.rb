class ToDoItem < ActiveRecord::Base
  before_destroy { |record| record.deleted = true; false }

  belongs_to :to_do_list
  after_create :default_will_expire_at

  validates :content, length: {maximum: 140}

  def deleted?
    return deleted
  end

  def expired?
    set_expired  
    return expired
  end

  def default_will_expire_at
    if (will_expire_at == nil)
      self.update(will_expire_at: DateTime.now + 10.days )
    end
  end

  def set_will_expire_at(expiration_date = DateTime.now + 10.days)
    self.update(will_expire_at: expiration_date)
  end

  def set_expired
    if self.will_expire_at < DateTime.now
      self.update(expired: true)
    end
  end

  def self.expire_all
    foo = ToDoItem.where(expired: false)

    foo.each do |item|
      item.set_expired
    end
  end
end