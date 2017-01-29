Rails.application.routes.draw do
#not putting my immediate concern in the events routes  just making sure all the content is on the edit page right now 
  get 'static_pages/home'
  resources :events 

end
