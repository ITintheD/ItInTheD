class Resource < ActiveRecord::Base
  attr_accessible :resource_count, :resource_file, :resource_title, :resource_url
end
