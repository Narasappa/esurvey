class MeritTemplate < ActiveRecord::Base
  attr_accessible :template_name, :merit_template_subjects_attributes
  validates :template_name,:presence=>true
  has_many :merit_template_subjects
  accepts_nested_attributes_for :merit_template_subjects
  has_many :surveys
end
