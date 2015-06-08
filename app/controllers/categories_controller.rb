class CategoriesController < ApplicationController
  def index
  	@categories =Category.all
  end

  def new
  	@category =Category.new 
  end

  def show 
    @category = Category.find(params[:id])
  end 

  def create
  	@category = Category.new(params.require(:category).permit(:name))
  	if @category.save
  		redirect_to categories_path
  	else
  		render :new
    end

  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path
    
  end
end
