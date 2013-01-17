class HomeController < ApplicationController

  require 'feedzirra'
  
  def index
    @title = 'IT in the D'
    @feed = Feedzirra::Feed.fetch_and_parse("http://detroit.cbslocal.com/show/great-lakes-innovation-and-technology-report/?feed=rss")
    @entry = @feed.entries.first

    @feed2 = Feedzirra::Feed.fetch_and_parse("http://feeds.feedburner.com/Xconomy_Full")
    @entry2 = @feed2.entries.first
    
     @feed3 = Feedzirra::Feed.fetch_and_parse("http://www.detroitnews.com/section/TECHNOLOGY&template=rss_gd&mime=xml")
     @entry3 = @feed3.entries.first

  end
  
  
  def map
    
  end
  
  
  def about
    @title = "About"
  end
  
  
  def contact
    
  end
  
end
