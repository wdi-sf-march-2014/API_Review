CallApi::Application.routes.draw do
  root 'messages#new'

  post '/send' => 'messages#send'
end
