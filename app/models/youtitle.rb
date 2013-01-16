class Youtitle
  def self.get_titles(user)
    result = HTTParty.get("https://gdata.youtube.com/feeds/api/users/#{user}/uploads?alt=json")
    json = ActiveSupport::JSON.decode(result.body)

    array_of_titles = []
    json["feed"]["entry"].each do |video|
      key =  video["title"]["$t"]
      #How to parse and regex the youtube title key
      #key = video["id"]["$t"].split("/")

      #Load keys into the array we defined earlier
      array_of_titles << key
    end
    raise array_of_titles.inspect
    return array_of_titles
  end
end


