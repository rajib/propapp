class Settings::BaseController < ApplicationController
  before_filter :authenticate_user!, :find_user
  
  layout "settings/application"

  protected
	def find_user
		@user = current_user
	end
end