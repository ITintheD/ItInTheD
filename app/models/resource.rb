class Resource < ActiveRecord::Base
  attr_accessible :resource_count, :attachment, :resource_title, :resource_url, :resource_type

  has_attached_file :attachment

  validates :resource_type, :resource_title, :presence => true
  validate :must_be_url_or_attachment

  private
  	def must_be_url_or_attachment
  		if self.attachment.blank? and self.resource_url.blank?
  			errors.add(:resource, "The resource must have a URL or an attachment.")
        return false
        elsif !self.attachment.blank? and !self.resource_url.blank?
        	errors.add(:resource, "Cannot have both a URL and an attachment.")
        return false
    else
        return true
    end
  end
end
