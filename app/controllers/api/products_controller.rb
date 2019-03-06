class Api::ProductsController < ApplicationController

  def index
    @products = Product.all
    render 'index.json.jbuilder'
  end
  #   if current_user
  #     @products = current_user.products
  #     render "index.json.jbuilder"
  #   else
  #     render json: []
  #   end
  # end
  def new
    @product = Product.new(
      name: params[:name],
      # image: params[:image],
      description: params[:description],
      price: params[:price],
      QOH: params[:QOH]
    )

    if product.save
      render json: {message: 'product created successfully'}, status: :created
    else
      render json: {errors: product.errors.full_messages}, status: :bad_request
    end
  end

  def create
    @product = Product.new(
      name: params[:name],
      # image: params[:image],
      description: params[:description],
      price: params[:price],
      QOH: params[:QOH],
      id: current_user
    )

    if @product.save
      render json: {message: 'product created successfully'}, status: :created
    else
      render json: {errors: @product.errors.full_messages}, status: :bad_request
    end
  end

  def show
    @product = Product.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @product = Product.find(params[:id])

    @product.name = params[:name] || @product.name
    @product.description = params[:description] || @product.description
    @product.price = params[:price] || @product.price
    @product.QOH = params[:QOH] || @product.QOH

    @product.save
    render 'show.json.jbuilder'
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    render json: {message: "This shit was burned with fire"}
  end
end