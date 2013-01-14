class Breed < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :dogs
end
