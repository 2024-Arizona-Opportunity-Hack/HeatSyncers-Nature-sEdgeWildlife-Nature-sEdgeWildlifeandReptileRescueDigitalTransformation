# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  get "up" => "rails/health#show", as: :rails_health_check
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  get "/portal", to: "portal#index"

  resources :donations
  resources :donor_contacts
  resources :donors

  root to: "home#index"
end

