class DojosController < ApplicationController
  before_action :authorize

  def new
    @dojo = Dojo.new
    @themes = Themes.all
    # @user.dojos.build
  end

  # create facade
  def create
    # user = User.find current_user.id
    @dojo = current_user.dojos.create(dojo_params)
    theme = Theme.find(dojo_params[:theme_id])
    theme.dojos << @dojo

    if user.save

    else
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private 
  def dojo_params
    params.require(:dojo).permit(:user_id, :theme_id, :title, :category)
  end
end
