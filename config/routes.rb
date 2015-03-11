Rails.application.routes.draw do
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


  post '/items/:user_id/charges', to: 'charges#create', as: 'payment'
  get '/items/:user_id/charges', to: 'charges#index', as: 'purchased'

end
