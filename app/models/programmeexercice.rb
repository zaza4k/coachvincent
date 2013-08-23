class Programmeexercice < ActiveRecord::Base
  attr_accessible :exercice_id, :programme_id

  belongs_to :exercice
  belongs_to :programme
end
