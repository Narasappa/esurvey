class MpConstituency < ActiveRecord::Base
  attr_accessible :constituency_name, :state_id
  has_many :surveys
end
