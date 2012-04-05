class Prop
  include Mongoid::Document
  field :title, :type => String
  field :description, :type => String
  field :point, :type => Integer
  field :category_id

  belongs_to :category
end
