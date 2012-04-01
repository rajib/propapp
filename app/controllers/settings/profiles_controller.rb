class Settings::ProfilesController < Settings::BaseController
  # GET /settings/profiles
  def edit
    @profile = Profile.find_or_initialize_by(:user_id => @user.id)
  end
  
  # PUT /settings/profiles
  def update
    @profile = Profile.find_or_initialize_by(:user_id => @user.id)
      @profile.first_name = params[:profile][:first_name]
      @profile.last_name = params[:profile][:last_name]
      @profile.user_id = @user.id
    
    
    if @profile.save
      redirect_to settings_profile_path, notice: 'Profile was successfully updated.'
    else
      render action: "edit"
    end
  end
end
