Rails.application.routes.draw do
  ## エラー原因: XXX
# 修正の意図: XXX
  resources :blog do
    resources :comments, only: [:create, :destroy]
  end
end
