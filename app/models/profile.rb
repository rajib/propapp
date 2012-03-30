class Profile
  include Mongoid::Document
  
  field :first_name, :type => String
  field :last_name, :type => String
  
  belongs_to :user
end
