Rails.application.routes.draw do
  get 'entries/create'
  # user
  post '/signin', to: 'users#signin'
  post '/signup', to: 'users#signup'
  get '/validate', to: 'users#validate'
# cycle
get '/cycles', to: 'cycles#index'
get '/cycles/current', to: 'cycles#current_cycle'
  # cycle journal
  # get '/cycle_journals', to: 'cycle_journal#index'

  resources :cycle_journals, only: [:show]

  post '/entries', to: 'entries#create'

  # # journal
  # get 'journals', to: 'journal#index'
  # get 'journals', to: 'journal#show'

  #entries


  
  # get '/current_cycle', to: 'users#current_cycle'
  # get '/journal', to: 'users#journal'

end
