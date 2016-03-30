class ArticlesController < ApplicationController
  def show
    # puts params
    @article = Article.find(params[:id])
  end

  def new
  end
end
