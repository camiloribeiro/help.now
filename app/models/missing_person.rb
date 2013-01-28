class MissingPerson < ActiveRecord::Base
  belongs_to :event
  attr_accessible :information, :name
end
