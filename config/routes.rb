Rails.application.routes.draw do

  resources :businessmen do 
    resources :dealers
    resources :investors
  end

  # resources :businessmen
  # resources :dealers
  # resources :investors
end
