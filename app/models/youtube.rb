require 'video_info'

class Youtube

  def self.get_players(user)
    result = HTTParty.get("https://gdata.youtube.com/feeds/api/users/#{user}/uploads?alt=json")
    json = ActiveSupport::JSON.decode(result.body)

      array_of_players = [$title, $player]

      json["feed"]["entry"].each do |player|

      #How to parse and regex the youtube video key
      key = player["id"]["$t"].split("/").last

      #Use gem to access hash attibutes
      video = VideoInfo.get("http://www.youtube.com/watch?v=#{key}")

      #Load titles and players into and r
      array_of_players = [ video.title, VideoInfo.get("http://www.youtube.com/watch?v=#{key}", :iframe_attributes => { :width => 470, :height => 315, :wmode => "opaque", :showinfo => 0, :controls => 0, "data-key" => "value" } ).embed_code]

    end

    return array_of_players
  end
end


