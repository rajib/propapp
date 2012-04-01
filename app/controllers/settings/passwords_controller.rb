class Settings::PasswordsController < Settings::BaseController
  # GET /settings/password
  def edit

  end
  
  # PUT /settings/password
  def update
    if @user.update_with_password(params[:user])
      sign_in @user, :bypass => true
      redirect_to settings_password_path, notice: 'Password was successfully updated.'
    else
      render action: "edit"
    end
  end
end
