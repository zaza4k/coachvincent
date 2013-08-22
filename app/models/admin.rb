class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
   attr_accessible :avatar, :avatar_cache, :email, :password, :password_confirmation, :remember_me

  mount_uploader :avatar, AvatarUploader

  validates_integrity_of :avatar
  validates_processing_of :avatar

end
