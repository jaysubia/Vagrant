Rails.application.routes.draw do
  get 'hello' => 'users#index'

  get 'say/hello' => 'users#new'

  get 'say/hello/joe' => 'users#joe'

  get 'say/hello/michael' => 'users#red'

  get '/' => 'users#blue'

  get 'times' => 'users#times'

  get 'times/restart' => 'users#restart'
 
end
