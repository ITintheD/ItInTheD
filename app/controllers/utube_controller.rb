class UtubeController < ApplicationController
	def index
@@youtube_user = "UC3sD2LbS9knGoDeANxiUbFw"
		@videos = Youtube.get_videos(params[:youtube_user])youtube_user
		:youtube_user.inspec
		render "users/myvideo"

	end
end