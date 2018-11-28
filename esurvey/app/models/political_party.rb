class PoliticalParty < ActiveRecord::Base
  attr_accessible :description, :name,:picture_attributes,:is_active,:short_word
  
  validates :name,:presence=>true
  validates :name,uniqueness: { message: " should have unique Name",:case_sensitive => false },:if=>:name?
  validates :description,:presence=>true
  


  has_many :users;
  has_one :picture, :as => :imageable
  accepts_nested_attributes_for :picture
  




  scope :active, -> { where(is_active: true) }
  scope :inactive, -> { where(is_active: false) }




end
