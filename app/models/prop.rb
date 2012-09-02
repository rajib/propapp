class Prop < ActiveRecord::Base
  
  field :title, :type => String
  field :description, :type => String
  field :point, :type => Integer
  field :category_id
  
  validates_presence_of   :point
  validates_presence_of   :category_id
  validates_presence_of   :title
  validates_uniqueness_of :title
  validates_length_of     :title, minimum: 3, maximum: 20

  belongs_to :category
end
