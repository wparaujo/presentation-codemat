class DashboardController < ApplicationController
	def index
		@my_themes = current_user.theme_notifiers

	    if @my_themes.empty?
	      #TODO: Use action cable to popup a theme selector
	      redirect_to theme_dojos_path
	    end
	end

	def near_dojos
		dojo_ids = Location.near(current_user.location.address).collect{|a| a.dojo_id}.uniq
    	@dojos = Dojo.where('id in (?)', dojo_ids)
	end

	def theme_dojos
	end

	def dojo
		# TO DO - Create dojo page from id and your video
		@videos = Video.all
	end

	private
end
