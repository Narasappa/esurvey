class InterviewsController < ApplicationController
  # GET /interviews
  # GET /interviews.json
  filter_access_to :all
  def index
    @interviews = Interview.paginate(:page => params[:page], :per_page => 10).order("id desc").all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @interviews }
    end
  end

 def  get_servey_conducter
  servey_conducter = ServeyConducter.find_by_survey_id_and_mla_town_id(params[:survey_id],params[:mla_town_id])
  @users = User.find([servey_conducter.user_id])
 end 

 def get_survey_result
  @survey = Survey.all
 end 
 
 def calculate_survey_result
  @survey = Survey.find(params[:survey_id])
  @max_score = @survey.find_total_score
  @qts= SurveyResult.joins(:question,:interview=>[:mla_town]).where("interviews.survey_id = ? ",params[:survey_id]).select("sum(survey_results.survey_marks) as total_score,count(questions.id) as count,questions.name as name ").group("questions.name").order("survey_results.survey_marks")
  @qts_max_score = @survey.find_max_score  
 unless params[:mla_town_id] == "All" || params[:mla_town_id].blank?
  @survey_result = SurveyResult.joins(:interview=>[:mla_town,:user]).where("interviews.mla_town_id = ? and interviews.survey_id = ? ",params[:mla_town_id],params[:survey_id]).select("sum(survey_results.survey_marks) as total_score,mla_towns.town_name as town_name,mla_towns.id as town_id,users.email as surveyor,count(distinct(interviews.id)) as count ").group("mla_towns.town_name").order("survey_results.survey_marks")
  else
  @survey_result = SurveyResult.joins(:interview=>[:mla_town,:user]).where("interviews.survey_id = ? ",params[:survey_id]).select("sum(survey_results.survey_marks) as total_score,mla_towns.town_name as town_name,mla_towns.id as town_id,users.email as surveyor,count(distinct(interviews.id)) as count ").group("mla_towns.town_name").order("survey_results.survey_marks")
  end
end

 def calculate_survey_result_of_town
    @survey = Survey.find(params[:survey_id])
    
    @questions = @survey.questions

    @qts= SurveyResult.joins(:question,:interview=>[:mla_town]).where("interviews.mla_town_id = ? and interviews.survey_id = ? ",params[:mla_town_id],params[:survey_id]).select("sum(survey_results.survey_marks) as total_score,count(questions.id) as count,questions.name as name ").group("questions.name").order("survey_results.survey_marks").order("survey_results.survey_marks")
    
    @qts_max_score = @survey.find_max_score  
    
    @max_score = @survey.find_total_score

    @survey_result = SurveyResult.joins(:interview=>[:mla_town,:user]).where("interviews.mla_town_id = ? and interviews.survey_id = ? ",params[:mla_town_id],params[:survey_id]).select("sum(survey_results.survey_marks) as total_score,mla_towns.town_name as town_name,mla_towns.id as town_id,users.email as surveyor,count(distinct(interviews.id)) as count ").group("mla_towns.town_name").order("survey_results.survey_marks")
    
 end


 def get_survey_town
  @survey = Survey.find(params[:id])
  @mla_towns = MlaTown.find(@survey.servey_conducters.map(&:mla_town_id))
 end

  def get_survey_question
   @merit_based = false;
   @merit_template_subjects = []
   @survey = Survey.find(params[:id])
    unless @survey.merit_template_id.nil?
      @merit_based = true;
      @merit_template_subjects = @survey.merit_template.merit_template_subjects
    end
   @questions = @survey.questions
   @scale = @survey.scale_weightage
   @mla_towns = MlaTown.find(@survey.servey_conducters.map(&:mla_town_id))   if session[:role_title].to_i == 8
   @mla_towns = MlaTown.find(@current_user.servey_conducters.map(&:mla_town_id))   if session[:role_title].to_i == 7

     
  end

  # GET /interviews/1
  # GET /interviews/1.json
  def show
    @interview = Interview.find(params[:id],:include=>[:survey,:survey_results])
     
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @interview }
    end
  end

  # GET /interviews/new
  # GET /interviews/new.json
  def new
    @interview = Interview.new
    @survey = Survey.all if session[:role_title].to_i == 8
    @survey = Survey.find(@current_user.servey_conducters.map(&:survey_id)) if session[:role_title].to_i == 7

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @interview }
    end
  end

  # GET /interviews/1/edit
  def edit
    @interview = Interview.find(params[:id])
    @survey1 = @interview.survey
    @survey = Survey.all if session[:role_title].to_i == 8
    @survey = Survey.find(@current_user.servey_conducters.map(&:survey_id)) if session[:role_title].to_i == 7

   @mla_towns = MlaTown.find(@survey.servey_conducters.map(&:mla_town_id))   if session[:role_title].to_i == 8
   @mla_towns = MlaTown.find(@current_user.servey_conducters.map(&:mla_town_id))   if session[:role_title].to_i == 7

  end

  # POST /interviews
  # POST /interviews.json
  def create
    @interview = Interview.new(params[:interview])
     @survey = Survey.all
    respond_to do |format|
      if @interview.save
        format.html { redirect_to @interview, notice: 'Interview was successfully created.' }
        format.json { render json: @interview, status: :created, location: @interview }
      else
        format.html { render action: "new" }
        format.json { render json: @interview.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /interviews/1
  # PUT /interviews/1.json
  def update
    @interview = Interview.find(params[:id])
    @survey = Survey.all
    respond_to do |format|
      if @interview.update_attributes(params[:interview])
        format.html { redirect_to @interview, notice: 'Interview was successfully updated.' }
        format.json { head :no_content }
      else
         p  @interview.errors.full_messages
        format.html { render action: "edit" }
        format.json { render json: @interview.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interviews/1
  # DELETE /interviews/1.json
  def destroy
    @interview = Interview.find(params[:id])
    @interview.destroy

    respond_to do |format|
      format.html { redirect_to interviews_url }
      format.json { head :no_content }
    end
  end
end
