class MlaConstituency < ActiveRecord::Base
  attr_accessible :constituency_name, :district_id, :state_id
  has_many :surveys
end
