class UsersController < ApplicationController
	before_action :current_user, only: [:edit, :update]
	before_action :authenticate_user!, except: [:top]

	def top
	end

	def index
	  @users = User.all
	  @book =Book.new
	end

	def show
	  @user = User.find(params[:id])
	end

	def edit
	  @user = User.find(params[:id])
	end

	def update
	  @user = User.find(params[:id])
	  if @user.update(user_params)
	  redirect_to user_path(@user.id)
	  else
	  	render :edit
	  end
	end

	private
	def user_params
	params.require(:user).permit(:name, :intrduction, :profile_image)
    end

end
