Rails.application.routes.draw do
 
   resources :users do 
    resources :user_posts 
   end
   root "desktop#index"
end
