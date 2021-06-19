Rails.application.routes.draw do
  resources :reviews
  get "/" => "reviews#top"
  resources :book do
    collection do
    end
  end
end
