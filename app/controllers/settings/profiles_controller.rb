class Settings::ProfilesController < Settings::BaseController
  # GET /settings/profiles
  def edit
    @profile = current_user.profile
  end
  
  # PUT /settings/profiles
  def update
    @profile = current_user.profile
    
    if @user.update_attributes(params[:user])
      redirect_to settings_account_path, notice: 'Account was successfully updated.'
    else
      render action: "edit"
    end
  end
end
