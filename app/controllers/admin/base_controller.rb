class Admin::BaseController < ApplicationController
  before_filter :authenticate_user!, :find_user, :is_admin?
  
  layout "admin/application"

  protected
	def find_user
	  @admin = current_user
	end
	
	def is_admin?
	 unless current_user.admin
     # render :text => "Unauthorized", :status => "401"
     render :file => "#{Rails.root}/public/401.html", :status => :unauthorized
	 end
	end
end