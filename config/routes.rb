Rails.application.routes.draw do
  devise_for :users
  root to: 'tweets#index'
  #root to:パス名で標準URLに設定
  resources :tweets do
  #resources で７つのアクションルートを自動作成
    resources :comments, only: :create
  end
  #resources :tweets, only: [:index, :new]と書くと二つのみルーティング設定できる
  resources :users, only: :show

end
