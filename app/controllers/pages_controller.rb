class PagesController < ApplicationController
before_filter :authenticate_admin!
  def home
  	@titre = "Accueil"
  end

  def exercices
  	@titre = "Exercices"
  end

  def programmes
  	@titre = "Programmes"
  end

  def dico
  	@titre = "Dico des sports"
  end

end
