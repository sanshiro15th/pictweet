Rails.application.routes.draw do
  devise_for :users
  root  'tweets#index'
  resources :tweets do
    resources :comments, only: [:create]
  end
  resources :users, only: [:show]    #users_controllerに対してのresourcesメソッド
#  get     ''                =>  'tweets#index'     #tweet一覧
#  get     'tweets'          =>  'tweets#index'     #tweet一覧
#  get     'tweets/new'      =>  'tweets#new'       #ツイート投稿画面
#  post    'tweets'          =>  'tweets#create'    #ツイート投稿機能
#  delete  'tweets/:id'      =>  'tweets#destroy'   #ツイート削除
#  get     'tweets/:id/edit' =>  'tweets#edit'      #ツイート編集
#  patch   'tweets/:id/'     =>  'tweets#update'    #ツイート更新
#  get     'tweets/:id'      =>  'tweets#show'      #ツイート詳細
#  get     'users/:id'       =>  'users#show'       #マイページ
end


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
