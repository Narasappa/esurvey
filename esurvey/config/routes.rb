Esurvey::Application.routes.draw do
  resources :messages


  get "notifications/index"

  resources :merit_templates


  resources :interviews do
    collection do
     get 'get_survey_question'
     get 'get_servey_conducter'
     get 'get_survey_result'
     get 'get_survey_town'
     post 'calculate_survey_result'
     get 'calculate_survey_result_of_town'
    end
  end


  resources :survey_results


  resources :surveys do 
    collection do
      get 'listsurveyor'
      get 'add_surveyors'
      post 'update_surveyor'
    end
  end


  #resources :users


  #resources :add_short_word_to_political_parties


  resources :political_parties  do 
   resources :users 
 end

match 'service/get_assigned_surveys/:user_id' => 'service#get_assigned_surveys'
match '/service/get_merit_list_of_survey/:surveys_id/:merit_template_id' =>'service#get_merit_list_of_survey'
match '/service/get_assigned_village_for_survey/:survey_id/:user_id'=>'service#get_assigned_village_for_survey'
match '/service/get_assigned_question_for_survey/:survey_id'=>'service#get_assigned_question_for_survey'
match '/service/get_interview_info/:interview_id'=>'service#get_interview_info' 
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
#root :to => 'political_parties#index'
root :to => 'home#login_form'
 

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
   match ':controller(/:action(/:id))(.:format)'
end
