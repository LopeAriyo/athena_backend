Rails.application.routes.draw do

# user
post '/signin', to: 'users#signin'
post '/signup', to: 'users#signup'
get '/validate', to: 'users#validate'


# cycle
get '/cycles', to: 'cycles#index'
post '/cycles', to: 'cycles#create'
get '/cycles/current', to: 'cycles#current_cycle'
patch '/cycles/current', to: 'cycles#update_current_cycle'
patch '/cycles/last', to: 'cycles#update_last_cycle'
delete '/cycles/:id', to: 'cycles#destroy'

# cycle journal
post '/cycle_journals', to: 'cycle_journals#create'
get '/cycle_journals/:id', to: 'cycle_journals#show'
delete '/cycle_journals/:id', to: 'cycle_journals#destroy'

# entries
post '/entries', to: 'entries#create'

# journal
resources :journals, only: [:index, :show]
resources :entries, only: [:update]


end
