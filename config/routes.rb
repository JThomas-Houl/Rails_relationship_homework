Rails.application.routes.draw do
  resources :appointment_slots
  resources :gps
  resources :surgeries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
