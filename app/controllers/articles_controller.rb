class ArticlesController < ApplicationController
  def show
    # puts params
    @article = Article.find(params[:id])
  end

  # renders the page to input all your fields
  def new
    @article = Article.new
  end

  # triggered on the 'post' button on new page
  def create
    @article = Article.new(article_params)
    @article.category = Category.find(params[:category_id])
    @article.save
      redirect_to category_path(@article.category)
  end

  private

  def article_params
    params.require(:article).permit([:title, :description, :address, :price])
  end

end
