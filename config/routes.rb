Rails.application.routes.draw do
  get 'searchbymobile/emergency'

  get 'searchbymobile/symptoms'

  get 'searchbymobile/vitals'

	resources :firstaids
	resources :palliative_cares
	resources :survival_guides
	resources :severities
	resources :vitals
	resources :symptoms
	resources :how_tos

	match ':controller(/:action(/:id))', :via => [:get, :post]

	get 'searchby/index'

	get 'searchby/firstaids'
	post 'searchby/firstaids'

	get 'searchby/symptoms'
	post 'searchby/symptoms'

	get 'searchby/vitals'
	post 'searchby/vitals'

  get 'searchbymobile/emergency'
  post 'searchbymobile/emergency'

  get 'searchbymobile/symptoms'
  post 'seasearchbymobilerchby/symptoms'

  get 'searchbymobile/vitals'
  post 'searchbymobile/vitals'

	get 'firstaids/index'
	post 'firstaids/index'

	get 'home/index'

	get 'home/how_to'

	post 'home/how_to'

	get 'home/survival_guide'

	post 'home/survival_guide'

	get 'home/palliative_care'

	post 'home/palliative_care'

	get 'landing/searchby_emergency'

	get 'landing/searchby_symptoms'

	get 'landing/searchby_vitals'

	get 'landing/tasks'

	get 'landing/palliative'

	get 'landing/maintenance'

	# The priority is based upon order of creation: first created -> highest priority.
	# See how all your routes lay out with "rake routes".

	# You can have the root of your site routed with "root"
	root 'home#index'

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
