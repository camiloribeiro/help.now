class HelpCenter < ActiveRecord::Base
  belongs_to :event
  attr_accessible :description, :name
end
