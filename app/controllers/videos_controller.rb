class VideosController < ApplicationController
    def index
        @videos = Video.all
    end

    def new
        @video = Video.new
    end

    def create
        @video = Video.new(stream_params)
        @video.source = "http://www.youtube.com/embed/"+"br6aGt_UnIc"
        if @video.save
            logger.debug "Saving video: #{@video.attributes.inspect}"
        else
            logger.debug "! ! Error: Could not save video: #{@video.attributes.inspect}"
        end

        redirect_to '/'
    end

    private
	def stream_params
		params.require(:video).permit(:source)
	end
end
