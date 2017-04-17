class ThemesController < ApplicationController
  def new
    @theme = Theme.new
  end

  def create
    @theme.new(theme_params)
    if @theme.save
      #TODO: use Action Cable to create
      flash[:notice] = "Ok"
    else
      #TODO: use Action Cable to return an error
      flash[:notice] = "Not ok"
    end
  end

  def update
    @theme = Theme.find current_user.id

    if @theme.update_attributes(theme_params)
      flash[:notice] = "Ok"
    else
      flash[:notice] = "Not ok"
    end
  end

  private
    def theme_params
      param.require(:theme).permit(:id, :name)
    end

    def upgradable_theme_params
      #TODO: picture should be upgradable
      #TODO: name shouldn't be upgradable
      param.require(:theme).permit(:name)
    end
end
