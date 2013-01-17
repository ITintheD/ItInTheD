class UtubeController < ApplicationController

		def index
		@videos = Youtube.get_videos(params[:youtube_user])
		render "users/players"
		render "users/titles"
	end

end
