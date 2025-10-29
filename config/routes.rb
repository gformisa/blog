Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "articles#index" # Define the root route to the articles index page. Basically it was defined in the articles controller index action.

  get "/articles", to: "articles#index" # Define the route for the articles index page.

  # Define the route for the articles show page.  This designates a route parameter. A route parameter captures a segment of the request's path, and puts that value into the params Hash,
  # which is accessible by the controller action. For example, when handling a request like GET http://localhost:3000/articles/1,
  # 1 would be captured as the value for :id, which would then be accessible as params[:id] in the show action of ArticlesController.
  get "/articles/:id", to: "articles#show"

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
