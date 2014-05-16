Api::Application.routes.draw do
  post '/message' => 'apis#message'
end
