Rails.application.routes.draw do
  root "categories#index"
  resources :categories do |categories|
    resources :articles
  end
end
