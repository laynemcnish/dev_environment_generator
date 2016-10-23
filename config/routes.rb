Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "scripts#index"

  resource "scripts", only: [:new, :edit, :update, :create, :index, :show] do
    member do
      get "download"
    end
  end
end
