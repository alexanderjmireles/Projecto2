class MembersController < ApplicationController
  def index
  	if params[:search]
  		@members = Member.search(params[:search]).order("created_at DESC")
  	else
  		@members = Member.order("created_at DESC")
  	end
  end

  def new
  end

  def create
  end
end
