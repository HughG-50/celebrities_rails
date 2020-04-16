Rails.application.routes.draw do
  # root index example
  # get "/", to: "celebrities#index", as: "root"

  # Index
  get "/celebrities", to: "celebrities#index"
  # Read
  get "/celebrities/:name", to: "celebrities#show"
  # Create
  post "/celebrities", to: "celebrities#create"
  # Update - want to update at a specific celebrity
  put "/celebrities/:name", to: "celebrities#update"
  #Delete - want to go to a celebrities specific URL to delete
  delete "/celebrities/:name", to: "celebrities#destroy"

end
