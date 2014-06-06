Rails.application.routes.draw do
  devise_for :users
  # Routes for the Respondent resource:
  # CREATE

  root 'questionnaires#new'
  get('/respondents/new', { :controller => 'respondents', :action => 'new' })
  get('/create_respondent', { :controller => 'respondents', :action => 'create' })

  # READ
  get('/respondents', { :controller => 'respondents', :action => 'index' })
  get('/respondents/:id', { :controller => 'respondents', :action => 'show' })

  # UPDATE
  get('/respondents/:id/edit', { :controller => 'respondents', :action => 'edit' })
  get('/update_respondent/:id', { :controller => 'respondents', :action => 'update' })

  # DELETE
  get('/delete_respondent/:id', { :controller => 'respondents', :action => 'destroy' })
  #------------------------------

  # Routes for the Questionnaire resource:
  # CREATE
  get('/questionnaires/new', { :controller => 'questionnaires', :action => 'new' })
  get('/create_questionnaire', { :controller => 'questionnaires', :action => 'create' })

  # READ
  get('/questionnaires', { :controller => 'questionnaires', :action => 'index' })
  get('/questionnaires/:id', { :controller => 'questionnaires', :action => 'show' })

  # UPDATE
  get('/questionnaires/:id/edit', { :controller => 'questionnaires', :action => 'edit' })
  get('/update_questionnaire/:id', { :controller => 'questionnaires', :action => 'update' })
  get('/questionnaires_answers', { :controller => 'questionnaires', :action => '/questionnaire_answers' })


  # DELETE
  get('/delete_questionnaire/:id', { :controller => 'questionnaires', :action => 'destroy' })
  #------------------------------

  # Routes for the Answer resource:
  # CREATE
  get('/answers/new', { :controller => 'answers', :action => 'new' })
  get('/create_answer', { :controller => 'answers', :action => 'create' })

  # READ
  get('/answers', { :controller => 'answers', :action => 'index' })
  get('/answers/:id', { :controller => 'answers', :action => 'show' })

  # UPDATE
  get('/answers/:id/edit', { :controller => 'answers', :action => 'edit' })
  get('/update_answer/:id', { :controller => 'answers', :action => 'update' })

  # DELETE
  get('/delete_answer/:id', { :controller => 'answers', :action => 'destroy' })





  #------------------------------

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
