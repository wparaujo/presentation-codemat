class DojosController < ApplicationController
	before_action :authorize

	def new
		@dojo = Dojo.new
		# @user.dojos.build
	end

	# create facade
	def create
		# user = User.find current_user.id
		
		#@dojo = Dojo.new(dojo_params)
		#dojoCreator = DojoCreator.new
		puts "#{:category_id}" 
		@dojo = DojoCustomCreator.dojoFactory(:category_id, :title)

		current_user.dojos << @dojo

		if current_user.save

		else
		end

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
		params.require(:dojo).permit(:user_id, :title, :category_id)
	end
end
