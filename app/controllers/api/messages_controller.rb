class Api::MessagesController < ApplicationController

  # before_action :authenticate_message
  

  def index
    @message = Message.all
    render 'index.json.jbuilder'

end  # def index
  #   @messages = Message.all
  #   render 'index.json.jbuilder'
  # end
  #   if current_user
  #     @messages = current_user.messages
  #     render "index.json.jbuilder"
  #   else
  #     render json: []
  #   end
  # end
  # def new
  #   @message = Message.new(
  #     subject: params[:subject],
  #     body: params[:body],
  #     id: current_user
  #   )

  #   if message.save
  #     render json: {message: 'Message created successfully'}, status: :created
  #   else
  #     render json: {errors: message.errors.full_messages}, status: :bad_request
  #   end
  # end

#   def create
#     @message = Message.new(
#       name: params[:name],
#       id: current_user
#     )

#     if @message.save
#       render json: {message: 'Message created successfully'}, status: :created
#     else
#       render json: {errors: @message.errors.full_messages}, status: :bad_request
#     end
#   end

#   def show
#     @message = Message.find(params[:id])
#     render 'show.json.jbuilder'
#   end

#   def update
#     @message = Message.find(params[:id])
#     @message.name = params[:name] || @message.name

#     @message.save
#     render 'show.json.jbuilder'
#   end

#   def destroy
#     @message = Message.find(params[:id])
#     @message.destroy
#     render json: {message: "This shit was burned with fire"}
#   end

# end
