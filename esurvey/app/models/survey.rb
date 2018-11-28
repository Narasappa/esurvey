class Survey < ActiveRecord::Base
	SERVEY_CONSTANT = {1=>"Scale Based",2=>"Merit Based"}
  attr_accessible :merit_weightage,:merit_template_id, :name, :scale_weightage, :survey_scale,:political_party_id, 
  :questions_attributes,:state_id,:mp_constituency_id,:mla_constituency_id,:mla_town_id,:user_id,:servey_conducters_attributes
  
  validates :name,:presence=>true
  validates :state_id,:presence=>true
  validates :mp_constituency_id,:presence=>true
  validates :mla_constituency_id,:presence=>true
  

  belongs_to :user
  belongs_to :survey_type
  belongs_to :survey
  belongs_to :political_party
  belongs_to :merit_template



  belongs_to :state
  belongs_to :mp_constituency
  belongs_to :mla_constituency
  belongs_to :mla_town

  has_many :interviews
  has_many :users;

  has_many :questions
  accepts_nested_attributes_for :questions


  has_many :servey_conducters
  accepts_nested_attributes_for :servey_conducters


  has_many :survey_results,:through=>:interview


  scope :scale_based, -> { where(survey_scale: 1) }
  scope :merit_based, -> { where(survey_scale: 2) }

  def find_total_score
    if survey_scale == "1"
         return scale_weightage*questions.length
      else
         return merit_template.merit_template_subjects.map(&:subject_marks).max*questions.length
    end
 end


 def find_max_score
    if survey_scale == "1"
         return scale_weightage
      else
         return merit_template.merit_template_subjects.map(&:subject_marks).max
    end
 end
 
end
