class User < ActiveRecord::Base
  attr_accessible :email, :nom
  has_many :messages
end
