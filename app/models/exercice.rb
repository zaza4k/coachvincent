class Exercice < ActiveRecord::Base
  attr_accessible :title, :description, :muscles, :conseils, :series, :repetitions, :repos

  validates :title, :presence => true

  has_many :programmeexercices
  has_many :programmes, :through => :programmeexercices
end
