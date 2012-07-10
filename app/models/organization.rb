class Organization < ActiveRecord::Base
  attr_accessible :address, :city, :lat, :long, :name, :org_url, :web_link, :zip
end
