class UsersController < ApplicationController
  def new
  end

  def index
  	@users = User.all
  end
  def edit
  	@user = User.find(params[:id])
  end
  def update
	@user = User.find(name: params[:name]) 
	if p.update(name: params[:name])
	redirect_to '/users/new' 
	end
  end
  def show
  	@user = User.find(params[:id])
  end
def create
	params[:name] = (0...8).map { (65 + rand(26)).chr }.join
	@user = User.create(name: params[:name]) 
	redirect_to '/users/new'
  end
end

