class Settings::BaseController < ApplicationController
  before_filter :authenticate_user!
  
  layout "settings/application"
end