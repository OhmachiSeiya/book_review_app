Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :reviews
  root "reviews#top"
  get "show_sample1" => "reviews#show_sample1"
  get "show_sample2" => "reviews#show_sample2"
end
