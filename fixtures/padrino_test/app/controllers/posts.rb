PadrinoTest.controllers :posts do
  get :index do
    @posts = Post.all
    render "posts/index"
  end

  get :show, :map => "/posts", :with => :id do
    @post = Post.find(params[:id])
    render "posts/show"
  end
end
