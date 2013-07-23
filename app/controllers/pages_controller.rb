class PagesController < ApplicationController
before_filter :authenticate_admin!
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
