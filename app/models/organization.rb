class Organization < ActiveRecord::Base
  attr_accessible :address, :city, :lat, :long, :name, :org_url, :web_link, :zip, :keyword_list, :org_type_id, :logo
  has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  acts_as_taggable
  acts_as_taggable_on :keywords
  belongs_to :org_type 
end
