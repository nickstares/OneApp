Rails.application.routes.draw do
  get 'about/index', as: 'about'

  get 'like/index', to:'like#index', as:'likes'

  get 'reservations/index'

  devise_for :deviseusers
  root 'main#index'

  get '/', to: 'main#index', as: 'index'
  get '/signup', to: 'main#signup', as: 'signup'
  post '/signup', to: 'main#create', as: 'create'
  delete '/logout', to: "main#logout", as: "logout"
  post '/main', to: 'main#login', as: 'login'

  get '/artists/:artist_id/items', to: 'items#index', as: 'artist_items' #shows all items of an artist
  get '/artists/:artist_id/items/:id', to: 'items#show', as: "artist_item"#shows the item of an artist
  get '/artists', to: 'artists#index', as: 'artists' #shows all artists
  get '/categories/:category_id/items', to: "categories#show", as: "category_items" #shows all items in a category
  get '/categories', to: "categories#index", as: "categories"

  get '/artists/:artist_id', to: 'artists#show', as:'artist'
  post '/artists/:artist_id/items/:id', to: 'reservations#addToReservation', as: "reserve" #triggers the reservation

  post 'items/:id', to: 'items#like', as: "like"
  delete 'like/index/:like_id', to: 'like#destroy', as: 'like_delete'

  get '/reservations', to: 'reservations#index', as:'reservation'
  delete '/reservations/:id', to: 'reservations#delete', as:'reservation_delete'


  # Fix these routes - User shoulnd't be part of the route. It's in the session deviseuser


  post '/items/:user_id/charges', to: 'charges#create', as: 'payment'
  get '/charges', to: 'charges#purchased', as: 'purchased'

  # get '/items/charges', to: 'charges#shopping', as: 'shoppingcart'


end
