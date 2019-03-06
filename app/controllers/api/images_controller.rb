class Api::ImagesController < ApplicationController

  def index
    @images = Image.all
    render 'index.json.jbuilder'
  end
  #   if current_user
  #     @images = current_user.images
  #     render "index.json.jbuilder"
  #   else
  #     render json: []
  #   end
  # end
  def new
    @image = Image.new(
      url: params[:url],
      id: current_user
    )

    if image.save
      render json: {message: 'image created successfully'}, status: :created
    else
      render json: {errors: image.errors.full_messages}, status: :bad_request
    end
  end

  def create
    @image = Image.new(
      url: params[:url]
    )

    if @image.save
      render json: {message: 'image created successfully'}, status: :created
    else
      render json: {errors: @image.errors.full_messages}, status: :bad_request
    end
  end

  def show
    @image = Image.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @image = Image.find(params[:id])

    @image.url = params[:url] || @image.url

    @image.save
    render 'show.json.jbuilder'
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    render json: {message: "This shit was burned with fire"}
  end

end
