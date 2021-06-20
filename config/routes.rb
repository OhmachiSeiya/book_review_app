Rails.application.routes.draw do
  resources :reviews
  get "/" => "reviews#top"
  get "show_sample1" => "reviews#show_sample1"
  get "show_sample2" => "reviews#show_sample2"
end
