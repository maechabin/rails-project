class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new

  end

  def create
    @user = User.new
    @user.name = params[:user][:name]
    @user.username = params[:user][:username]
    @user.location = params[:user][:location]
    @user.about = params[:user][:about]
    @user.save
    redirect_to '/users/index'
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update({
      name: params[:user][:name],
      username: params[:user][:username],
      location: params[:user][:location],
      about: params[:user][:about]
    })
    redirect_to :action => 'show', :id => @user.id
  end
end
