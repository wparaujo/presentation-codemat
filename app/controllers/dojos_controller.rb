#require_relative '../factory/dojo/dojo_creator.rb'

class DojosController < ApplicationController
	before_action :authorize

	def new
		@dojo = Dojo.new
	end

	def create

		@dojo = DojoFactory::DojoCreator.create(params[:dojo][:category].to_sym, params[:dojo][:title])

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
