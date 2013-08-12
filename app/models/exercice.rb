class Exercice < ActiveRecord::Base
	belongs_to :programme

	validates :title, :presence => true

  attr_accessible :foto, :conseils, :description, :muscles, :title
  mount_uploader :foto, FotoUploader

  validates_integrity_of :foto
  validates_processing_of :foto

end
