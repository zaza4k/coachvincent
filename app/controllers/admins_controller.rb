class AdminsController < ApplicationController

	def show
	  @admin = Admin.find(params[:id])
	end

	def default_url
    ActionController::Base.helpers.asset_path("fallback/" + [version_name, "missing.png"].compact.join('_'))
  end

end