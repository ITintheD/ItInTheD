class Event < ActiveRecord::Base
  attr_accessible :local, :time, :title
  has_and_belongs_to_many :users
end
