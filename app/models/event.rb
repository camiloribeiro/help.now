class Event < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :missing_people
  has_many :help_centers
end
