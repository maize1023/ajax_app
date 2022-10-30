Rails.application.routes.draw do
  root to: 'posts#index'
  post 'posts', to: 'posts#create'

  def create
   Post.create(content: params[:content])
   redirect_to action: :index  # 追記する
 end

end
