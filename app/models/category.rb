class Category
  include Mongoid::Document
  field :title, :type => String
  field :description, :type => String

  has_many :props
end
