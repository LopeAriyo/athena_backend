Rails.application.routes.draw do
  post '/signin', to: 'users#signin'
  post '/signup', to: 'users#signup'
  get '/validate', to: 'users#validate'
  # get '/cycle', to: 'users#cycle'
  # get '/journal', to: 'users#journal'
  # get '/insights', to: 'users#insights'
  # get '/profile', to: 'users#profile'

end
