Rails.application.routes.draw do
 get 'histories/register'

  get 'histories/login'

  post 'session' => 'sessions#create'

  post 'histories/lender' => 'histories#create_lender'

  get 'histories/lender/:id' => 'histories#lender', :as => 'lender'

  post 'histories/lend_money/:id' => 'histories#lend_money', :as => 'lend_money'

  post 'histories/borrower' => 'histories#create_borrower'

  get 'histories/borrower/:id' => 'histories#borrower', :as => 'borrower'

  get 'sessions/destroy'
  
end
