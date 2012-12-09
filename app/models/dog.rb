class Dog < ActiveRecord::Base
  belongs_to :breed
  attr_accessible :age, :name, :nickname

  def self.hero
    Dog.first
  end
end
