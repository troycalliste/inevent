Rails.application.routes.draw do
  
  

   get '/', to: 'static_pages#home'
   get '/login', to: 'sessions#new'
   get '/signup', to: 'users#new'
   get '/features', to: 'static_pages#features'
  resources :users
  resources :venues
  resources :sessions
 
  resources :events do 
  resources :reservations
  resources :guestlists
end
  
  get '/resos', to: 'reservations#otherven'
  get '/guestlist', to: 'events#guestlist'




#not putting my immediate concern in the events routes  just making sure all the content is on the edit page right now 
  get 'static_pages/home'
  #resources :events 
  get 'events/tableview'
#  post '/new' to: 'reservations#new'
 
end
