class DojosController < ApplicationController
  before_action :authorize

  def new
    @dojo = Dojo.new
    @themes = Theme.all
  end

  # create facade
  def create
    @dojo = current_user.dojos.create(dojo_params)

    if @dojo.save
      theme = Theme.find dojo_params[:theme_id]
      theme.dojos << @dojo
      flash[:notice] = "Ok"
      redirect_to '/'
    else
      flash[:error] = "Not ok"
      redirect_to '/'
    end
  end

  def create
    category = params[:dojo][:category].to_sym
    dojo_factory = dojos_factories[category]

    if (dojo_factory)
      @dojo = dojo_factory.create(dojo_params, current_user)
    end

    if @dojo.save
      theme = Theme.find dojo_params[:theme_id]
      theme.dojos << @dojo
      flash[:notice] = "Ok"
      redirect_to '/'
    else
      flash[:error] = "Not ok"
      redirect_to '/'
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

    def dojos_factories
      Hash.try_convert({
        kata: DojoFactory::KataCreator,
        randori: DojoFactory::RandoriCreator
      })
    end
end
