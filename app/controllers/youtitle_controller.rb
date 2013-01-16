class YoutitleController < ApplicationController
	def index
		@titles = Youtitle.get_titles(params[:youtube_user])
	end
end