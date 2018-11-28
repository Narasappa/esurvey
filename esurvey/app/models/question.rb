class Question < ActiveRecord::Base
  belongs_to :survey
  attr_accessible :is_active, :name

 
  
end
