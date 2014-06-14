Rails.application.routes.draw do
  devise_for :users
  
  root 'to_do_list#index'
end
