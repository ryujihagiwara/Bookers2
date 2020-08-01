class UsersController < ApplicationController
	before_action :correct_user, only: [:edit, :update]
	before_action :authenticate_user!, except: [:top]

	def top
	end

	def index
	  @users = User.all
	end

	def show
	  @user = User.find(params[:id])
	end
end
