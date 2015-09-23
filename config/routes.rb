Rails.application.routes.draw do
  devise_for :users

  resources :posts do
  	member do
  		get "like" => "posts#upvote"
  		get	"dislike" => "posts#downvote"
  	end

  	resources :comments
  end

  root "posts#index"
end