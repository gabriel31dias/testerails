Rails.application.routes.draw do

  resources :submissions
  namespace :recruiter do
    resources :recruiters
    resources :jobs
  end


  scope '/v1' do
    post '/auth/login', to: 'authentication#login'
  end
end
