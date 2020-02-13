Rails.application.routes.draw do
  devise_for :users
  root to: 'products#index'

  resources :products do
    resources :reserves do
      get 'confirmation'
    end
  collection do
    get 'about'
    get 'contact'
    post 'contact'
  end
end

end
