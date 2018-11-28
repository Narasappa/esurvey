class SurveyResult < ActiveRecord::Base
  attr_accessible :interview_id,:survey_marks,:question_id
  #validates :interview_id,:presence=>true
  validates :question_id,:presence=>true
  validates :survey_marks,:presence=>true

  belongs_to :interview
  belongs_to :question
  belongs_to :survey #,:through=>:interview
end
