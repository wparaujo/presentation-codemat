class ThemesController < ApplicationController
  def index
    @themes = Themes.all
  end

  def new
    @theme = Theme.new
  end

  def create
    @theme.new(theme_params)
    if @theme.save
      #TODO: use Action Cable to create
      flash[:notice] = "Ok"
      redirect_to '/'
    else
      #TODO: use Action Cable to return an error
      flash[:notice] = "Not ok"
      redirect_to 'signup'
    end
  end

  def update
    @theme = Theme.find params[:id]

    if @theme.update_attributes(theme_params)
      flash[:notice] = "Ok"
    else
      flash[:notice] = "Not ok"
    end
  end

  def select_themes

  end

  def follow
    @theme = Theme.find params[:id]

    if @theme.add_observer(current_user)
      flash[:notice] = "Ok"
    else
      flash[:notice] = "Not ok"
    end
  end

  def unfollow
    @theme = Theme.find params[:id]

    if @theme.delete_observer(current_user)
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
