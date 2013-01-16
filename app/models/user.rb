class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,:confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :location, :city, :state, :zip, :telephone, :summary, :avatar, :header, :resume, :user_type

 # def self.find_for_database_authentication(conditions={})
 #   self.where("username = ?", conditions[:email]).limit(1).first ||
 #   self.where("email = ?", conditions[:email]).limit(1).first
 # end

  has_attached_file :avatar,
                    :url => '/system/:class/:attachment/:id/:style/:filename'

end
