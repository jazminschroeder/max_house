class Dog < ActiveRecord::Base
  belongs_to :breed
  attr_accessible :age, :name, :nickname

  def self.top_three
    Dog.first
  end
end
