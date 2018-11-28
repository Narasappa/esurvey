authorization do

 role :super_admin do
 	   includes :home
     has_permission_on :political_parties,:to => [:index,:show,:new,:edit,:create,:update,:destroy]
     has_permission_on :users,:to => [:index,:show,:new,:edit,:create,:update,:destroy]
     has_permission_on :surveys,:to => [:listsurveyor,:add_surveyor,:update_surveyor,:index,:show,:new,:edit,:create,:update,:destroy]    
     has_permission_on :survey_results,:to => [:index,:show,:new,:edit,:create,:update,:destroy]
     has_permission_on :service,:to => [:get_mp_constituencies_of_state,:get_mla_constituencies_of_mp_constituency]
     has_permission_on :merit_templates,:to => [:index,:show,:new,:edit,:create,:update,:destroy]
     has_permission_on :interviews,:to => [:get_servey_conducter,:get_survey_result,:calculate_survey_result,:calculate_survey_result_of_town,:get_survey_town,:get_survey_question,:index,:show,:new,:edit,:create,:update,:destroy]
   end

 role :admin do
     includes :home
     #has_permission_on :political_parties,:to => [:index,:show,:new,:edit,:create,:update,:destroy]
     has_permission_on :users,:to => [:index,:show,:new,:edit,:create,:update,:destroy]
     has_permission_on :surveys,:to => [:listsurveyor,:add_surveyor,:update_surveyor,:index,:show,:new,:edit,:create,:update,:destroy]    
     has_permission_on :survey_results,:to => [:index,:show,:new,:edit,:create,:update,:destroy]
     has_permission_on :service,:to => [:get_mp_constituencies_of_state,:get_mla_constituencies_of_mp_constituency]
     has_permission_on :merit_templates,:to => [:index,:show,:new,:edit,:create,:update,:destroy]
     has_permission_on :interviews,:to => [:get_servey_conducter,:get_survey_result,:calculate_survey_result,:calculate_survey_result_of_town,:get_survey_town,:get_survey_question,:index,:show,:new,:edit,:create,:update,:destroy]
   end

role :surveyor do
     includes :home
     #has_permission_on :political_parties,:to => [:index,:show,:new,:edit,:create,:update,:destroy]
     #has_permission_on :users,:to => [:index,:show,:new,:edit,:create,:update,:destroy]
     #has_permission_on :surveys,:to => [:listsurveyor,:add_surveyor,:update_surveyor,:index,:show,:new,:edit,:create,:update,:destroy]    
     #has_permission_on :survey_results,:to => [:index,:show,:new,:edit,:create,:update,:destroy]
     has_permission_on :service,:to => [:get_mp_constituencies_of_state,:get_mla_constituencies_of_mp_constituency]
     #has_permission_on :merit_templates,:to => [:index,:show,:new,:edit,:create,:update,:destroy]
     has_permission_on :interviews,:to => [:get_servey_conducter,:get_survey_result,:calculate_survey_result,:calculate_survey_result_of_town,:get_survey_town,:get_survey_question,:show,:new,:create,:update,:destroy,:edit]
   end

role :national_president do
     includes :home
     #has_permission_on :political_parties,:to => [:index,:show,:new,:edit,:create,:update,:destroy]
     has_permission_on :users,:to => [:index,:show,:new,:edit,:create,:update,:destroy]
     has_permission_on :surveys,:to => [:listsurveyor,:add_surveyor,:update_surveyor,:index,:show,:new,:edit,:create,:update,:destroy]    
     has_permission_on :survey_results,:to => [:index,:show,:new,:edit,:create,:update,:destroy]
     has_permission_on :service,:to => [:get_mp_constituencies_of_state,:get_mla_constituencies_of_mp_constituency]
     has_permission_on :merit_templates,:to => [:index,:show,:new,:edit,:create,:update,:destroy]
     has_permission_on :interviews,:to => [:get_servey_conducter,:get_survey_result,:calculate_survey_result,:calculate_survey_result_of_town,:get_survey_town,:get_survey_question,:index,:show,:new,:edit,:create,:update,:destroy]
   end

role :state_president do
     includes :home
     #has_permission_on :political_parties,:to => [:index,:show,:new,:edit,:create,:update,:destroy]
     has_permission_on :users,:to => [:index,:show,:new,:edit,:create,:update,:destroy]
     has_permission_on :surveys,:to => [:listsurveyor,:add_surveyor,:update_surveyor,:index,:show,:new,:edit,:create,:update,:destroy]    
     has_permission_on :survey_results,:to => [:index,:show,:new,:edit,:create,:update,:destroy]
     has_permission_on :service,:to => [:get_mp_constituencies_of_state,:get_mla_constituencies_of_mp_constituency]
     has_permission_on :merit_templates,:to => [:index,:show,:new,:edit,:create,:update,:destroy]
     has_permission_on :interviews,:to => [:get_servey_conducter,:get_survey_result,:calculate_survey_result,:calculate_survey_result_of_town,:get_survey_town,:get_survey_question,:index,:show,:new,:edit,:create,:update,:destroy]
   end
role :district_president do
     includes :home
     #has_permission_on :political_parties,:to => [:index,:show,:new,:edit,:create,:update,:destroy]
     has_permission_on :users,:to => [:index,:show,:new,:edit,:create,:update,:destroy]
     has_permission_on :surveys,:to => [:listsurveyor,:add_surveyor,:update_surveyor,:index,:show,:new,:edit,:create,:update,:destroy]    
     has_permission_on :survey_results,:to => [:index,:show,:new,:edit,:create,:update,:destroy]
     has_permission_on :service,:to => [:get_mp_constituencies_of_state,:get_mla_constituencies_of_mp_constituency]
     has_permission_on :merit_templates,:to => [:index,:show,:new,:edit,:create,:update,:destroy]
     has_permission_on :interviews,:to => [:get_servey_conducter,:get_survey_result,:calculate_survey_result,:calculate_survey_result_of_town,:get_survey_town,:get_survey_question,:index,:show,:new,:edit,:create,:update,:destroy]
   end

role :book_president do
     includes :home
     #has_permission_on :political_parties,:to => [:index,:show,:new,:edit,:create,:update,:destroy]
     has_permission_on :users,:to => [:index,:show,:new,:edit,:create,:update,:destroy]
     has_permission_on :surveys,:to => [:listsurveyor,:add_surveyor,:update_surveyor,:index,:show,:new,:edit,:create,:update,:destroy]    
     has_permission_on :survey_results,:to => [:index,:show,:new,:edit,:create,:update,:destroy]
     has_permission_on :service,:to => [:get_mp_constituencies_of_state,:get_mla_constituencies_of_mp_constituency]
     has_permission_on :merit_templates,:to => [:index,:show,:new,:edit,:create,:update,:destroy]
     has_permission_on :interviews,:to => [:get_servey_conducter,:get_survey_result,:calculate_survey_result,:calculate_survey_result_of_town,:get_survey_town,:get_survey_question,:index,:show,:new,:edit,:create,:update,:destroy]
   end

role :home do
  has_permission_on :home,:to=>[:index,:logout,:login_form,:login_attempt,:forgot_password,:reset_password,:set_new_password]
  end
  
  
end
