class BooksController < ApplicationController

	def top
	end

	def index
	  @book=Book.new
	  @books=Book.all
	end

	def create
	end

	def show
	end

	def edit
	end

	def update
	end

	def destroy
	end
end
