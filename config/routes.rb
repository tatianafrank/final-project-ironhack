Rails.application.routes.draw do
  devise_for :users
  root 'site#home'
  get '/schedule' => 'site#schedule'
end
