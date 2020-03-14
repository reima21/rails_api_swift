Rails.application.routes.draw do

  # コメントにする
  # mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # 追加
  namespace :api do
    mount_devise_token_auth_for 'User', at: 'auth', controllers: {
        registrations: 'api/auth/registrations'
    }
  end

  namespace 'api' do
    namespace 'v1' do
      resources :posts
    end
  end

end