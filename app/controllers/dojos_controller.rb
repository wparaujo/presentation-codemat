class DojosController < ApplicationController
	before_action :authorize

	def new
		@dojo = Dojo.new
		# @user.dojos.build
	end

	# create facade
	def create
		# user = User.find current_user.id
		@dojo = Dojo.new(dojo_params)
		current_user.dojos << @dojo

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
		params.require(:dojo).permit(:user_id, :title)
	end
end
