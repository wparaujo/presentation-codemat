#require_relative '../factory/dojo/dojo_creator.rb'

class DojosController < ApplicationController
	before_action :authorize

	def new
		@dojo = Dojo.new
	end

    DojoTypes = {
      kata: DojoFactory::KataCreator,
      randori: DojoFactory::RandoriCreator
    }
	def create

	    dojoType = DojoTypes[dojo_params[:category].to_sym]

		if (dojoType)
			@dojo = dojoType.create(dojo_params[:title])
		end
		
		@dojo.user = current_user


		if @dojo.save
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
		params.require(:dojo).permit(:user_id, :title, :category)
	end
end
