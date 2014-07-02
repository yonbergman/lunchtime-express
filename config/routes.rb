LunchtimeExpress::Application.routes.draw do
  get :map, to: 'application#map'
  get :restaurants, to: 'application#root'
  root to: 'application#root'
end
