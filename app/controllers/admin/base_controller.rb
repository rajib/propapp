class Admin::BaseController < ApplicationController
  before_filter :authenticate_user!, :find_user
  
  layout "admin/application"

  protected
	def find_user
	  @admin = current_user
	end
end