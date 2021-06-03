Rails.application.routes.draw do
  root "myco_files#index"
  
  resources :myco_files, path: '/myco-filez' do
    resources :photos
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
