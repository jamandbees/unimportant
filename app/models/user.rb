class User < ActiveRecord::Base
  devise :registerable, :recoverable, :rememberable, :trackable, :confirmable, :lockable
end