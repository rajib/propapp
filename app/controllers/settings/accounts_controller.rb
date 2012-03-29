class Settings::AccountsController < Settings::BaseController
  # GET /settings/account
  def edit
    @user = current_user
  end
  
  # PUT /settings/account
  def update
    @user = current_user
    @user.update_attributes(params[:user])
    respond_with(@user) do |format|
      if @user.errors.any?  
        format.html { render action: "edit" }
      else
        format.html { redirect_to edit_settings_account_path, notice: 'Prop was successfully updated.' }
      end
    end
  end
end
