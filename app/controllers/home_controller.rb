class HomeController < ApplicationController
  
  def index
    @title = 'IT in the D'
    @entries = Feed.fetch
  end
  
  
  def map
    
  end
  
  
  def about
    @title = "About"
  end
  
  
  def contact
    
  end
  
end
