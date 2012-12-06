class UtubeController < ApplicationController
	def index
		@videos = Youtube.get_videos(params[:youtube_user])
	end
end