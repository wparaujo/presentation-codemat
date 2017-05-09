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

	    dojoType = DojoTypes[params[:dojo][:category].to_sym]
		if (dojoType)
			@dojo = dojoType.create(dojo_params, current_user)
		end

		if @dojo.save
			# Ok
		else
			# TODO: Error saving the dojo
			raise "Error"
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
		params.require(:dojo).permit(:user_id, :title)
	end
end
