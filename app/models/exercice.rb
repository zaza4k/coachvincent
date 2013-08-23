class Exercice < ActiveRecord::Base
  attr_accessible :title, :description, :muscles, :conseils, :series, :repetitions, :repos, :foto, :foto_cache

  validates :title, :presence => true

  has_many :programmeexercices
  has_many :programmes, :through => :programmeexercices

  mount_uploader :foto, FotoUploader

  validates_integrity_of :foto
  validates_processing_of :foto
end
