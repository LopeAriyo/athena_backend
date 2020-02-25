Rails.application.routes.draw do
  post '/signin', to: 'users#signin'
  post '/signup', to: 'users#signup'
  get '/validate', to: 'users#validate'
  get '/cycles', to: 'users#cycles'
  get '/current_cycle', to: 'users#current_cycle'
  # get '/journal', to: 'users#journal'

end
