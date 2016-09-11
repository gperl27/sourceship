Rails.application.routes.draw do

  get '/', to: "site#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :companies do
    resources :projects
  end
  get '/projects', to: "projects#all"
end
