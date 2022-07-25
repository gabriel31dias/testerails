Rails.application.routes.draw do
  scope '/v1' do
    post '/auth/login', to: 'authentication#login'
    resources :submissions
    namespace :recruiter do
      resources :recruiters
      resources :jobs
    end
  end
end
