class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(post_params)
    @article.save
    redirect_to @article
  end

  private

  def post_params
    params.require(:article).permit(:title, :body)
  end
end
