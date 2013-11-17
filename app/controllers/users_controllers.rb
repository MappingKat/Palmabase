class UsersController < ApplicationController
  include UsersHelper

  def index
  end

  def show 
    @user = User.find(current_user.id)
  end

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
  end
