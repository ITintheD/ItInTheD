class Youtube

  def self.get_videos(user)
    result = HTTParty.get("https://gdata.youtube.com/feeds/api/users/#{user}/uploads?alt=json")
    json = ActiveSupport::JSON.decode(result.body)

    array_of_videos = []

    json["feed"]["entry"].each do |video|

      #How to parse and regex the youtube video key
      key = video["id"]["$t"].split("/").last

      #Load keys into the array we defined earlier
      array_of_videos << key
    end

    return array_of_videos
  end
end


