class Category < ActiveRecord::Base
	
  field :title, :type => String
  field :description, :type => String

  has_many :props
end
