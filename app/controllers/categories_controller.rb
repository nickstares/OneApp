class CategoriesController < ApplicationController
  def index
    @category = Category.find(params[:category_id])
    @items = @category.items
    @artists = Artist.all 

  end

  def show
  end
end
