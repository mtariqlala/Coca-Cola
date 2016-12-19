Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#home'
   
   resources:lorries
   resources:managers
   resources:outlets
   resources:deliveries
   resources:gets 
   resources:makes
   resources:drives
   resources:drivers
end
