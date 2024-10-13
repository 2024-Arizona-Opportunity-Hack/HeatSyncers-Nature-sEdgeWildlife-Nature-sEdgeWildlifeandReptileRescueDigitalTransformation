# frozen_string_literal: true

Rails.application.routes.draw do
  get "donors/index"
  get "donors/show"
  get "donors/new"
  get "donors/create"
  get "donors/update"
  get "donors/destroy"
  devise_for :users

  get "up" => "rails/health#show", as: :rails_health_check
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  get "/portal", to: "portal#index"

  resources :donations
  resources :donor_contacts

  root to: "home#index"
end

