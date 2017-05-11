class ApplicationController < ActionController::Base
  #protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
      puts "a"*50
      puts
      puts "Session: #{session[:user_id]}"
      puts
      puts "a"*50
  	if (session[:user_id])
  		@current_user ||= User.where(id: session[:user_id])[0]
  	end
  end

  def authorize
  	redirect_to '/login' unless current_user
  end
end
