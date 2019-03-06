class Api::UsersController < ApplicationController

  # before_action :authenticate_user

  def index
    @users = User.all
    render 'index.json.jbuilder'
  end
  #   if current_user
  #     @users = current_user.users
  #     render "index.json.jbuilder"
  #   else
  #     render json: []
  #   end
  # end
  def new
    @user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      address: params[:address],
      bio: params[:bio],
      avatar: params[:avatar],
      id: current_user
    )

    if user.save
      render json: {message: 'User created successfully'}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end

  def create
    @user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      address: params[:address],
      bio: params[:bio],
      avatar: params[:avatar],
      id: current_user
    )

    if @user.save
      render json: {message: 'User created successfully'}, status: :created
    else
      render json: {errors: @user.errors.full_messages}, status: :bad_request
    end
  end

  def show
    @user = User.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @user = User.find(params[:id])

    @user.name = params[:name] || @user.name
    @user.email = params[:email] || @user.email
    @user.address = params[:address] || @user.address
    @user.bio = params[:bio] || @user.bio
    @user.avatar = params[:avatar] || @user.avatar

    @user.save
    render 'show.json.jbuilder'
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    render json: {message: "This shit was burned with fire"}
  end
end