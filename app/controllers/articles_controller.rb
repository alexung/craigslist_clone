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

  #triggered on getting to the page to edit
  def edit
    @article = Article.find(params[:id])
  end

  #triggered on clicking the 'update' button
  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
    redirect_to category_article_path(@article.category_id,@article.id)
  end

  private

  # good practice bc you can reuse these same params between create and update.
  #   Also, can specialize this method with per-user checking of permissible attrs
  def article_params
    params.require(:article).permit([:title, :description, :address, :price])
  end

end
