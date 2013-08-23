class Programme < ActiveRecord::Base
  attr_accessible :intro, :outro, :title

  validates :title, :presence => true

  has_many :programmeexercices
  has_many :exercices, :through => :programmeexercices
end
