Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check


  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"
  get "about", to: "about#index"
  # get "/", to: "main#index" - root
  root "main#index"
end
