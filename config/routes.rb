Rails.application.routes.draw do
  devise_for :users
  root to: 'tweets#index'
  #root to:パス名で標準URLに設定
  resources :tweets
  #resources で７つのアクションルートを自動作成
  #resources :tweets, only: [:index, :new]と書くと二つのみルーティング設定できる
end
