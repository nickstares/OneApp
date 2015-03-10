class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:category_id])
    @items = @category.items
    @artists = Artist.all 
  end
end
