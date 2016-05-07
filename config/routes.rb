Rails.application.routes.draw do
  
  resources :outra_nota_fiscals

  resources :articles do
    resources :comments
  end
 
  root 'welcome#index'

 
end
