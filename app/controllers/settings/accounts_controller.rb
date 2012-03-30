class Settings::AccountsController < Settings::BaseController
  # GET /settings/account
  def edit
    @user = current_user
  end
  
  # PUT /settings/account
  def update
    @user = current_user
    
    if @user.update_attributes(params[:user])
      redirect_to settings_account_path, notice: 'Account was successfully updated.'
    else
      render action: "edit"
    end
  end
end
