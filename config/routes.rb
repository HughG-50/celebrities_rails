Rails.application.routes.draw do
  
  # get "/", to: "celebrities#index", as: "root"

  get "/celebrities", to: "celebrities#index"
  # Read
  get "/celebrities/:id", to: "celebrities#show"
  # Create
  post "/celebrities", to: "celebrities#create"
  # Update
  put "/celebrities", to: "celebrities#update"
  patch "/celebrities", to: "celebrities#update"
  #Delete
  delete "/celebrities", to: "celebrities#destroy"

end
