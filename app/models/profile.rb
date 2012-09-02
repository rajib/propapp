class Profile < ActiveRecord::Base
  
  field :first_name, :type => String
  field :last_name, :type => String
  
  belongs_to :user

  validates_presence_of :first_name
  validates_presence_of :last_name
end
