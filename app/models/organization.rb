class Organization < ActiveRecord::Base
<<<<<<< HEAD
  attr_accessible :address, :city, :lat, :long, :name, :org_url, :web_link, :zip, :keyword_list, :org_type_id, :logo, :org_num_students_employ, :org_start_year, :org_annual_sales, :org_optional_stat_a, :org_job, :org_phone, :org_state
=======
  attr_accessible :address, :city, :lat, :long, :name, :org_url, :web_link, :zip, :keyword_list, :org_type_id, :logo
  # has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "100x100>" }
>>>>>>> c4ff96d5c05b529d72e34735c7c2fdf80f24b2fb
  acts_as_taggable
  acts_as_taggable_on :keywords
  belongs_to :org_type
end
