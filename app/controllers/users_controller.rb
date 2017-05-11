class UsersController < ApplicationController
  def new
  	@user = User.new
    @location = Location.new
  end

  def home
    @my_themes = current_user.theme_notifiers

    if @my_themes.empty?
      #TODO: Use action cable to popup a theme selector
      redirect_to select_themes_path
    end
  end

  def create
# <<<<<<< HEAD
  	user = User.new(user_params)
    user.create_location(location_params)
    
  	if user.save
  		session[:user_id] = user.id
  		redirect_to home_path
  	else
  		redirect_to 'signup'
  	end
# =======
    # Refactor this line later
    # if User.where(email: user_params[:email])[0]
      # Duplicated user
      # TO DO: print error message - user already exists
    #   redirect_to login_path
    # else
    #   user = User.new(user_params)
    #   if user.save
    #     session[:user_id] = user.id
    #     redirect_to '/'
    #   else
    #     redirect_to 'signup'
    #   end
    # end

# >>>>>>> issue_04_dojo
  end

  def update
    if current_user.update_attributes(user_params)
      flash[:notice] = "Ok"
    else
      flash[:notice] = "not ok"
    end
  end

  private
  def user_params
  	params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, location_attributes: [:address, :latitude, :longitude])
  end

  def location_params
    params.require(:location).permit(:address, :latitude, :longitude)
  end
end
