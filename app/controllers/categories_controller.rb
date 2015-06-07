class CategoriesController < ApplicationController
  def index
  	@categories =Category.all
  end

  def new
  	@category =Category.new 
  end

  def create
  	@category =
  end
end
