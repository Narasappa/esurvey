class MeritTemplateSubject < ActiveRecord::Base
  attr_accessible :subject_marks, :subject_name
  validates :subject_marks,:presence=>true
  validates :subject_name,:presence=>true
  belongs_to :merit_template_id
end
