class PagesController < ApplicationController

  def home
  	@title = "Accueil"
  end

  def exercices
  	@title = "Exercices"
  end

  def programmes
  	@title = "Programmes"
  end

  def dico
  	@title = "Dico des sports"
  end

end
