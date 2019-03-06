class Api::CategoriesController < ApplicationController

  def index
    @category = Category.all
    render 'index.json.jbuilder'
  end
  #   if current_user
  #     @catergories = current_user.categorys
  #     render "index.json.jbuilder"
  #   else
  #     render json: []
  #   end
  # end
  def new
    @category = Category.new(
      title: params[:title]
      )

    if category.save
      render json: {message: 'category created successfully'}, status: :created
    else
      render json: {errors: category.errors.full_messages}, status: :bad_request
    end
  end

  def create
    @category = Category.new(
      title: params[:title]
      )

    if @category.save
      render json: {message: 'category created successfully'}, status: :created
    else
      render json: {errors: @category.errors.full_messages}, status: :bad_request
    end
  end

  def show
    @category = Category.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @category = Category.find(params[:id])

    @category.title = params[:title] || @category.title

    @category.save
    render 'show.json.jbuilder'
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    render json: {message: "This shit was burned with fire"}
  end

end


# 1 Bakery  2019-03-03 19:26:14.716104  2019-03-03 19:26:14.716104
# 2 Beverages 2019-03-03 19:26:14.716105  2019-03-03 19:26:14.716105
# 3 Canned & Pickled  2019-03-03 19:26:14.716106  2019-03-03 19:26:14.716106
# 4 Herbs & Spices  2019-03-03 19:26:14.716107  2019-03-03 19:26:14.716107
# 5 Health & Home 2019-03-03 19:26:14.716108  2019-03-03 19:26:14.716108
# 6 Produce 2019-03-03 19:26:14.716105  2019-03-03 19:26:14.716109
# 7 Test 1  2019-03-05 17:34:16.420638  2019-03-05 17:34:16.420638