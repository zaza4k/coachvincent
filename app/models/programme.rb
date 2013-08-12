class Programme < ActiveRecord::Base
	has_many :exercices

	validates :Title, :presence => true

  	attr_accessible :Contenu, :Intro, :Outro, :Title, :exercices
end
