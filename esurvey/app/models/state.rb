class State < ActiveRecord::Base
  attr_accessible :state_code, :state_name
  has_many :surveys
end
