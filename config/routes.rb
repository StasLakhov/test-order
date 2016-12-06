Rails.application.routes.draw do

  resources :tcases do
    resources :tsteps
  end

end
