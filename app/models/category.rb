class Category
  include Mongoid::Document
  field :title, :type => String
  field :description, :type => String

  belongs_to :prop
end
