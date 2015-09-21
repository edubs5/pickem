Rails.application.routes.draw do
  namespace :api do
    namespace :v1, :defaults => {format: "json"} do
      resources :teams, only: [:index, :show]
    end
  end

  # Catch all (Serve frontend)
  get "*path", to: "application#index"
  root "application#index"
end
