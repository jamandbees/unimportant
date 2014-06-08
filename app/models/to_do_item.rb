class ToDoItem < ActiveRecord::Base
  before_destroy { |record| record.deleted = true; false }

  belongs_to :to_do_list
  before_save :set_will_expire_at, :set_expired

  validates :content, length: {maximum: 140}

  def expired?
    set_expired
    
    return expired
  end

  def deleted?
    return deleted
  end

  def set_will_expire_at(expiration_date = DateTime.now + 10.days)
    self.will_expire_at = expiration_date
  end

  def set_expired
    if self.will_expire_at < DateTime.now
      self.expired = true
    end
  end
end