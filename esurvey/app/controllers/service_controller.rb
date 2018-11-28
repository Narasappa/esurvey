class ServiceController < ApplicationController

    # Request Uri  : /service/get_mp_constituencies_of_state
    #"/service/get_mp_constituencies_of_state?state_id=12"

	def  get_mp_constituencies_of_state
         mp_constituencies= MpConstituency.find_all_by_state_id(params[:state_id])
         render :json=>{:mp_constituencies=>mp_constituencies}
	end

       # Request Uri  : /service/get_mla_constituencies_of_mp_constituency
       #http://localhost:3000//service/get_mla_constituencies_of_mp_constituency?district_id=16
	def get_mla_constituencies_of_mp_constituency
         mla_constituencies = MlaConstituency.find_all_by_district_id(params[:district_id])
         render :json=>{:mla_constituencies=>mla_constituencies}
	end

   # Request Uri  : /service/verify_user_login
   # Request Type :  POST
   # Request  Payload {user:{user_name:"email_or_mobile_number",password:"user password"}}
   # Response Data Success :  database object with status code 200
   # Response Data Failure :  reurn same params object with status code 404
  def verify_user_login
    authorized_user = User.authenticate(params[:user][:username],params[:user][:password])
    if authorized_user
    	render :json =>{:data=>authorized_user,:status_code=>200,:status_mesage=>:ok,:data_type=>"Object"}
    else
        render :json =>{:data=>{},:status_code=>404,:status_mesage=>:not_found,:data_type=>"Empty"}
    end
 end

  # Request Uri  : /service/get_assigned_surveys/:user_id
  # Request Type :  Get
  # Request  Payload - No payload body,We are sending using path params
  # Response Data Success :  Assigned array list of Survey Info with status code 200
  # Response Data Failure :  reurn same params object with status code 404

 def  get_assigned_surveys
  	surveys = Survey.find(ServeyConducter.find_all_by_user_id(params[:user_id]).map(&:survey_id).uniq)
    unless surveys.empty?
     render :json =>{:data=>surveys,:status_code=>200,:status_mesage=>:ok,:data_type=>"Array"}
       else
     render :json =>{:data=>{},:status_code=>200,:status_mesage=>:ok,:data_type=>"Empty"}
     end
 end

  # Request Uri  : /service/get_merit_list_of_survey/:survey_id/:merit_template_id
  # Request Type :  Get
  # Request  Payload - No payload body,We are sending using path params
  # Response Data Success :  Assigned array list of Survey Info with status code 200
  # Response Data Failure :  reurn same params object with status code 404

 def get_merit_list_of_survey
 	survey = Survey.where(" id = ? and merit_template_id = ?",params[:surveys_id],params[:merit_template_id])
 	unless survey.empty?
 	  render :json =>{:data=>survey.first.merit_template.merit_template_subjects,:status_code=>200,:status_mesage=>:ok,:data_type=>"Array"} 
 	  else
 	   render :json =>{:data=>{},:status_code=>200,:status_mesage=>:ok,:data_type=>"Empty"} 
 	end

 end

  # Request Uri  : /service/get_assigned_village_for_survey/:survey_id/:user_id
  # Request Type :  Get
  # Request  Payload - No payload body,We are sending using path params
  # Response Data Success :  Assigned array list of Survey Info with status code 200
  # Response Data Failure :  reurn same params object with status code 404
 def get_assigned_village_for_survey
  mla_towns = MlaTown.find(ServeyConducter.find_all_by_user_id_and_survey_id(params[:user_id],params[:survey_id]).map(&:mla_town_id).uniq)
    unless mla_towns.empty?
     render :json =>{:data=>mla_towns,:status_code=>200,:status_mesage=>:ok,:data_type=>"Array"}
       else
     render :json =>{:data=>{},:status_code=>200,:status_mesage=>:ok,:data_type=>"Empty"}
     end
 end

  # Request Uri  : /service/get_assigned_question_for_survey/:survey_id
  # Request Type :  Get
  # Request  Payload - No payload body,We are sending using path params
  # Response Data Success :  Assigned array list of Survey Info with status code 200
  # Response Data Failure :  reurn same params object with status code 404
 def get_assigned_question_for_survey
  survey = Survey.find_by_id(params[:survey_id])
   unless survey.nil?
   	 render :json =>{:data=>survey.questions,:status_code=>200,:status_mesage=>:ok,:data_type=>"Array"}
       else
     render :json =>{:data=>{},:status_code=>200,:status_mesage=>:ok,:data_type=>"Empty"}
   end
 end
 # Request Uri  : /service/save_survey_info/save_survey_info
  # Request Type :  Post
  # Request  Payload - {"interview"=>{"name"=>"10 merit scaled", "mobile_number"=>"10 merit scaled", "voter_id"=>"10 merit scaled", "survey_id"=>"8", "mla_town_id"=>"1", "user_id"=>"7", "survey_results_attributes"=>{"0"=>{"question_id"=>"46", "survey_marks"=>"1"}, "1"=>{"question_id"=>"47", "survey_marks"=>"1"}, "2"=>{"question_id"=>"48", "survey_marks"=>"1"}, "3"=>{"question_id"=>"49", "survey_marks"=>"1"}, "4"=>{"question_id"=>"50", "survey_marks"=>"1"}, "5"=>{"question_id"=>"51", "survey_marks"=>"0"}, "6"=>{"question_id"=>"52", "survey_marks"=>"0"}, "7"=>{"question_id"=>"53", "survey_marks"=>"0"}, "8"=>{"question_id"=>"54", "survey_marks"=>"0"}, "9"=>{"question_id"=>"55", "survey_marks"=>"0"}}}}
  # Response Data Success :  Assigned array list of Survey Info with status code 200
  # Response Data Failure :  reurn same params object with status code 404
 

 def save_survey_info
 	interview = Interview.new(params["interview"])
    if interview.save
    render :json =>{:data=>interview,:status_code=>200,:status_mesage=>:ok,:data_type=>"Array"}
       else
     render :json =>{:data=>interview.errors.full_messages,:status_code=>200,:status_mesage=>:ok,:data_type=>"Array"}
   end
 end

  # Request Uri  : /service/get_interview_info/:interview_id
  # Request Type :  Get
  # Request  Payload - No payload body,We are sending using path params
  # Response Data Success :  Assigned array list of Survey Info with status code 200
  # Response Data Failure :  reurn same params object with status code 404

 def get_interview_info
   interview = Interview.find_by_id(params[:interview_id])
    unless interview.nil?
   	 render :json =>{:data=>interview,:status_code=>200,:status_mesage=>:ok,:data_type=>"Array"}
       else
     render :json =>{:data=>{},:status_code=>200,:status_mesage=>:ok,:data_type=>"Empty"}
   end
 end


 def update_survey_info

 end

end
