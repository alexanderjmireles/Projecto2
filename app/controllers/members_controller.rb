class MembersController < ApplicationController
  def index
  	@merbers = Member.all
  end

  def new
  	@member = Member.new
  end

  def create
  	
  end
end
