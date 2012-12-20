class Social < ActiveRecord::Base
  belongs_to :organization
  attr_accessible :soc_type, :soc_url
end
