class Interview < ActiveRecord::Base
 
  attr_accessible :mobile_number,:user_id,:mla_town_id,:name,:voter_id,:survey_id,:survey_results_attributes
  
  validates :name,:presence=>true
  validates :voter_id,:presence=>true
  validates :mobile_number,:presence=>true
  validates :survey_id,:presence=>true
  validates :user_id,:presence=>true
  validates :mla_town_id,:presence=>true
  
  belongs_to :survey
  belongs_to :user
  belongs_to :mla_town
  has_many :survey_results
  accepts_nested_attributes_for :survey_results


  def calculate_interview_score
      secured_score = 0;
      total_score = 0;
      if survey.merit_template_id.nil?
      total_score = survey_results.length*survey.scale_weightage ;
       else
       total_score = survey_results.length*survey.merit_template.merit_template_subjects.map(&:subject_marks).max
    end
      survey_results.each do |survey_result|
           secured_score+= survey_result.survey_marks
       end
       return  [secured_score,total_score]
   end

end
