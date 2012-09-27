class Event < ActiveRecord::Base
  attr_accessible :local, :time, :title
  has_and_belongs_to_many :users #:dependent => :destroy
  #validates :title, :presence => true, :length => { :maximum => 50 }
  #validates :user_id, :presence => true

  #default_scope :order => 'events.created_at DESC'
end
