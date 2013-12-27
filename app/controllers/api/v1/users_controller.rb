class Api::V1::UsersController < ApplicationController

	skip_before_action :verify_authenticity_token

  def index
    #@users = User.find(params[:user_id])
    @users = User.all
    #@posts = Post.User.all
  end
  
  def show
    @users = User.find(params[:id])
  end

  def create
  	#{post {title name body}}

  	@user = User.new(user_params)

  	if @user.save 
  		head  :created
  	else
  		#head  :unprocessable_entity
  		render json: @user.errors.full_message, status: :unprocessable_entity
  	end
  	#render text: 'hello', status: 201
  end
  
  def update
  	@user = User.find(params[:id])
  	if @user.update(user_params) 
  		head :ok
  	else
  		render json: @user.errors.full_message, status: :unprocessable_entity
  	end
  end

  def destroy
  	@user = User.find(params[:id])
  	@user.destroy
  	head :ok
  end

  private 
  def user_params
  	#params.require(:post).permit(:title, :body, :user_id)
  	params.require(:user).permit(:uuid, :name)
  end
end