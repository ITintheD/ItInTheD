class Organization < ActiveRecord::Base

  attr_accessible :address, :city, :lat, :long, :name, :org_url, :web_link, :zip, :keyword_list, :org_type_id, :logo, :org_num_students_employ, :org_start_year, :org_annual_sales, :org_optional_stat_a, :org_job, :org_phone, :org_state, :description, :org_type, :socials_attributes

  has_attached_file :logo,
                    :url => '/system/:class/:attachment/:id/:style/:filename'
  acts_as_taggable
  acts_as_taggable_on :keywords
  has_many :socials
  accepts_nested_attributes_for :socials
  belongs_to :org_type
end
