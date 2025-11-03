Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: "customers#index"

  get "customers/missing_email", to: "customers#missing_email"

  resources :customers do
    collection do
      get :alphabetized
    end
  end

  get "up" => "rails/health#show", as: :rails_health_check
end
