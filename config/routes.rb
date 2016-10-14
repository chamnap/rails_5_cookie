Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  post "/auth/sign_out",          to: "sessions#destroy", as: :sign_out
end
