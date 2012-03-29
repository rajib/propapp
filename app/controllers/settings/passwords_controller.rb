class Settings::PasswordsController < Settings::BaseController
  # GET /settings/password
  def edit
    @user = current_user
  end
  
  # PUT /settings/password
  def update
  end
end
