#require_relative '../factory/dojo/dojo_creator.rb'

class DojosController < ApplicationController
  before_action :authorize

# <<<<<<< HEAD
  def new
    @dojo = Dojo.new
    @themes = Theme.all
    # @user.dojos.build
  end

  # create facade
  def create
    # user = User.find current_user.id
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

  def edit
  end
# =======
	# def new
	# 	@dojo = Dojo.new
	# end

 #    DojoFactories = {
 #      kata: DojoFactory::KataCreator,
 #      randori: DojoFactory::RandoriCreator
 #    }
	# def create

	#     dojoFactories = DojoFactories[params[:dojo][:category].to_sym]
	# 	if (dojoFactories)
	# 		@dojo = dojoFactories.create(dojo_params, current_user)
	# 	end

	# 	if @dojo.save
	# 		# Ok
	# 	else
	# 		# TODO: Error saving the dojo
	# 		raise "Error"
	# 	end

	# end

	# def edit

	# end
# >>>>>>> issue_04_dojo

  def update
  end

  def destroy
  end
  
  private
  def dojo_params
    params.require(:dojo).permit(:user_id, :theme_id, :title, :category)
  end
end
