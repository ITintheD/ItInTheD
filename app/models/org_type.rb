class OrgType < ActiveRecord::Base
  attr_accessible :name, :icon
  has_many :organizations 
end
