Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root 'site#home'
  get '/schedule' => 'site#schedule'
  get '/how-it-works' => 'site#how'
  post '/addtags' => 'site#addTags'
  get '/users_home' => 'site#home'
  get '/myschedule' => 'schedule#my_schedule'
end
