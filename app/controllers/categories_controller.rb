class CategoriesController < ApplicationController
  helper_method :get_twitter_api

  def index
    get_twitter_api
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @articles = Article.where(category_id: params[:id])
  end


end
