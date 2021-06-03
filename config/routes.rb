Rails.application.routes.draw do
  root "myco_files#index"
  
  get "/myco-filez", to: "myco_files#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
