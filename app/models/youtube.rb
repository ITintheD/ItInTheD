require 'video_info'

class Youtube

  def self.get_players(user)
    result = HTTParty.get("https://gdata.youtube.com/feeds/api/users/#{user}/uploads?alt=json")
    json = ActiveSupport::JSON.decode(result.body)

      array = []

      json["feed"]["entry"].each do |player|

        #How to parse and regex the youtube video key
        key = player["id"]["$t"].split("/").last

        #Use gem to access hash attibutes
        video = VideoInfo.get("http://www.youtube.com/watch?v=#{key}")
        iframe_src = "http://www.youtube.com/embed/#{key}?wmode=opaque;rel=0;showinfo=0;controls=0;autoplay=0"
        #Load titles and players into and r
        hash = {:title => video.title, :iframe_src => iframe_src}

        array << hash
    end

    return array
  end
end


