class SearchController < ApplicationController

  def index
    raise params["search_params"]["q"].inspect
    # "search_params"=>{"q"=>"sdasdasdsa"}}

  end

end
